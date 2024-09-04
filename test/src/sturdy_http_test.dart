import 'dart:io';

import 'package:charlatan/charlatan.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sturdy_http/sturdy_http.dart';
import 'package:test/test.dart' hide Retry;

part 'sturdy_http_test.freezed.dart';
part 'sturdy_http_test.g.dart';

void main() {
  group('SturdyHttp', () {
    late Charlatan charlatan;
    late List<RequestOptions> authFailureRequests;
    late Map<String, Exception> jsonDecodingErrors;
    late List<RequestOptions> mutativeRequestSuccessRequests;
    late SturdyHttpEventListener eventListener;

    setUp(() {
      charlatan = Charlatan();
      authFailureRequests = [];
      jsonDecodingErrors = {};
      mutativeRequestSuccessRequests = [];
      eventListener = _SturdyHttpEventListener(
        onAuthFailure: (request) {
          authFailureRequests.add(request);
        },
        onDecodingError: (request, exception, _) {
          jsonDecodingErrors[request.path] = exception;
        },
        onMutativeRequestSuccess: (request) {
          mutativeRequestSuccessRequests.add(request);
        },
      );
    });

    SturdyHttp buildSubject({
      String baseUrl = 'http://example.com',
      List<Interceptor> interceptors = const [],
      Map<String, String>? proxy,
      bool inferContentType = false,
      RetryBehavior retryBehavior = const NeverRetry(),
    }) {
      return SturdyHttp(
        baseUrl: baseUrl,
        customAdapter: charlatan.toFakeHttpClientAdapter(),
        eventListener: eventListener,
        interceptors: interceptors,
        proxy: proxy,
        inferContentType: inferContentType,
        retryBehavior: retryBehavior,
      );
    }

    group('interceptors', () {
      test('it returns the provided interceptors', () {
        final interceptors = [_FakeInterceptor()];
        final subject = buildSubject(
          interceptors: interceptors,
          inferContentType: false,
        );

        expect(subject.interceptors, interceptors);
      });
    });

    group('inferContentType', () {
      test('it does not infer content-type when false', () async {
        String? contentType;
        final subject = buildSubject(
          inferContentType: false,
          interceptors: [
            _FakeInterceptor(
              onRequestInvoked: (options) {
                contentType = options.headers[Headers.contentTypeHeader] as String?;
              },
            ),
          ],
        );

        charlatan.whenPost('/infer', (request) => CharlatanHttpResponse());

        await subject.execute(
          PostRequest('/infer', data: NetworkRequestBody.json({'foo': 'bar'})),
          onResponse: (r) {},
        );

        expect(contentType, isNull);
      });

      test('it infers content-type when true', () async {
        String? contentType;
        final subject = buildSubject(
          inferContentType: true,
          interceptors: [
            _FakeInterceptor(
              onRequestInvoked: (options) {
                contentType = options.headers[Headers.contentTypeHeader] as String?;
              },
            ),
          ],
        );

        charlatan.whenPost('/infer', (request) => CharlatanHttpResponse());

        await subject.execute(
          PostRequest('/infer', data: NetworkRequestBody.json({'foo': 'bar'})),
          onResponse: (r) {},
        );

        expect(contentType, 'application/json');
      });
    });

    group('baseUrl', () {
      test('it returns the correct baseUrl', () {
        const baseUrl = 'https://foo.com';
        final subject = buildSubject(baseUrl: baseUrl);

        expect(subject.baseUrl, baseUrl);
      });
    });

    group('httpClientAdapter', () {
      test('it returns the correct httpClientAdapter', () {
        final subject = buildSubject();

        expect(subject.httpClientAdapter, isA<CharlatanHttpClientAdapter>());
      });
    });

    group('withBaseUrl', () {
      test('it returns a new instance with correct baseUrl and pre-configured settings', () {
        final oldInstance = buildSubject(
          interceptors: [_FakeInterceptor()],
        );
        expect(oldInstance.baseUrl != 'https://foo.com', isTrue);

        final newInstance = oldInstance.withBaseUrl('https://foo.com');
        expect(identical(oldInstance, newInstance), isFalse);
        expect(newInstance.baseUrl, 'https://foo.com');
        expect(newInstance.interceptors, oldInstance.interceptors);
        expect(newInstance.httpClientAdapter, oldInstance.httpClientAdapter);
      });
    });

    group('execute', () {
      group('request options', () {
        late RequestOptions options;

        setUp(() {
          charlatan
            ..whenGet('/foo', (request) {
              options = request.requestOptions;
              return CharlatanHttpResponse();
            })
            ..whenPost('/bar', (request) {
              options = request.requestOptions;
              return CharlatanHttpResponse();
            });
        });

        group('data', () {
          group('when NetworkRequestBody is empty', () {
            test('request options contain null data', () async {
              await buildSubject().execute<Json, bool>(
                const GetRequest('/foo'),
                onResponse: (response) {
                  return switch (response) {
                    Ok() => true,
                    _ => false,
                  };
                },
              );
              expect(options.data, isNull);
            });
          });

          group('when NetworkRequestBody is json', () {
            test('request options contain json data', () async {
              await buildSubject().execute<Json, Foo?>(
                const GetRequest(
                  '/foo',
                  data: NetworkRequestBody.json(
                    <String, dynamic>{
                      'foo': 'bar',
                    },
                  ),
                ),
                onResponse: (response) {
                  return null;
                },
              );
              expect(
                options.data,
                isA<Json>()
                    .having((json) => json.keys.single, 'key', 'foo')
                    .having((json) => json.values.single, 'value', 'bar'),
              );
            });
          });

          group('when manual options are provided', () {
            test('request options contain manually provided values', () async {
              await buildSubject().execute<Json, Foo?>(
                GetRequest(
                  '/foo',
                  data: NetworkRequestBody.json(
                    <String, dynamic>{
                      'foo': 'bar',
                    },
                  ),
                  options: Options(extra: {'foo': 'bar'}),
                ),
                onResponse: (response) {
                  return null;
                },
              );
              expect(
                options.extra,
                isA<Json>()
                    .having((json) => json.keys.single, 'key', 'foo')
                    .having((json) => json.values.single, 'value', 'bar'),
              );
            });
          });
        });

        group('queryParameters', () {
          test('request options contain correct query parameters ', () async {
            await buildSubject().execute<Json, void>(
              const GetRequest(
                '/foo',
                queryParameters: <String, dynamic>{'foo': 'bar'},
              ),
              onResponse: (response) {},
            );
            expect(
              options.queryParameters,
              isA<Map<String, dynamic>>()
                  .having((params) => params.keys.single, 'key', 'foo')
                  .having((params) => params.values.single, 'value', 'bar'),
            );
          });
        });

        group('method', () {
          test('request options contain correct method ', () async {
            await buildSubject().execute<Json, void>(
              const GetRequest('/foo'),
              onResponse: (response) {},
            );
            expect(options.method, 'GET');
            await buildSubject().execute<void, void>(
              const PostRequest(
                '/bar',
                data: NetworkRequestBody.empty(),
              ),
              onResponse: (response) {},
            );
            expect(options.method, 'POST');
          });
        });
      });

      group('response handling', () {
        group('when response is successful', () {
          group('for all request types', () {
            group('when data is returned', () {
              setUp(() {
                charlatan
                  ..whenGet(
                    '/foo',
                    (request) => CharlatanHttpResponse(
                      body: Foo(message: 'Hello world').toJson(),
                    ),
                  )
                  ..whenGet(
                    '/not-foo',
                    (request) => CharlatanHttpResponse(
                      body: NotFoo(notMessage: 'Hello world').toJson(),
                    ),
                  )
                  ..whenGet(
                    '/bar',
                    (request) => CharlatanHttpResponse(body: 'a raw string'),
                  );
              });

              group('when deserialization succeeds', () {
                test('it returns parsed model', () async {
                  final response = await buildSubject().execute<Json, Result<Foo, String>>(
                    const GetRequest('/foo'),
                    onResponse: (response) {
                      return switch (response) {
                        Ok<Json>(:final response) => Result.success(Foo.fromJson(response)),
                        _ => const Result.failure('Not expected: orElse'),
                      };
                    },
                  );

                  response.when(
                    success: (foo) => expect(foo.message, 'Hello world'),
                    failure: fail,
                  );
                });
              });

              group('when deserialization fails', () {
                test('it emits a decodingError event and rethrows the Exception', () async {
                  final request = buildSubject().execute<Json, Result<Foo, String>>(
                    const GetRequest('/not-foo'),
                    onResponse: (response) {
                      return switch (response) {
                        Ok<Json>(:final response) => Result.success(Foo.fromJson(response)),
                        _ => const Result.failure('Not expected: orElse'),
                      };
                    },
                  );

                  await expectLater(
                    request,
                    throwsA(isA<CheckedFromJsonException>()),
                  );

                  expect(
                    jsonDecodingErrors['/not-foo'].toString(),
                    contains('CheckedFromJsonException'),
                  );
                });
              });
            });

            group('when no data is returned', () {
              group('when status code is 204', () {
                setUp(() {
                  charlatan.whenPost(
                    '/foo',
                    (request) => CharlatanHttpResponse(
                      statusCode: 204,
                      body: null,
                    ),
                  );
                });
                test('it returns okNoContent', () async {
                  final response = await buildSubject().execute<void, Result<bool, String>>(
                    const PostRequest(
                      '/foo',
                      data: NetworkRequestBody.empty(),
                    ),
                    onResponse: (response) {
                      return switch (response) {
                        NoContent() => const Result.success(true),
                        _ => const Result.failure('Not expected: orElse'),
                      };
                    },
                  );

                  response.when(
                    success: (s) => expect(s, isTrue),
                    failure: fail,
                  );
                });
              });

              group('when status code is non-204', () {
                setUp(() {
                  charlatan.whenPost(
                    '/foo',
                    (request) => CharlatanHttpResponse(
                      statusCode: 200,
                      body: null,
                    ),
                  );
                });
                test(
                  'it returns genericError and isConnectionIssue is false',
                  () async {
                    final response = await buildSubject().execute<void, Result<bool, String>>(
                      const PostRequest(
                        '/foo',
                        data: NetworkRequestBody.empty(),
                      ),
                      onResponse: (response) {
                        return switch (response) {
                          GenericError(:final isConnectionIssue) => () {
                              {
                                expect(isConnectionIssue, isFalse);
                                return const Result<bool, String>.success(true);
                              }
                            }(),
                          _ => const Result.failure('Not expected: orElse'),
                        };
                      },
                    );

                    response.when(
                      success: (s) => expect(s, isTrue),
                      failure: fail,
                    );
                  },
                );
              });
            });
          });

          group('when request is mutative (POST or PUT or DELETE)', () {
            group('when request is successful', () {
              group('and the response has status code 200 or 204', () {
                setUp(() {
                  charlatan
                    ..whenPost(
                      '/foo',
                      (request) => CharlatanHttpResponse(
                        body: <String, dynamic>{'foo': 'bar'},
                        statusCode: 200,
                      ),
                    )
                    ..whenPut(
                      '/bar',
                      (request) => CharlatanHttpResponse(
                        body: <String, dynamic>{'foo': 'bar'},
                        statusCode: 204,
                      ),
                    )
                    ..whenDelete(
                      '/baz',
                      (request) => CharlatanHttpResponse(
                        body: <String, dynamic>{'foo': 'bar'},
                        statusCode: 200,
                      ),
                    );
                });

                test('it emits a MutativeRequestSuccess event with correct path', () async {
                  final subject = buildSubject();
                  await Future.wait([
                    subject.execute<void, Result<String, String>>(
                      const PostRequest(
                        '/foo',
                        data: NetworkRequestBody.empty(),
                      ),
                      onResponse: (response) {
                        return switch (response) {
                          Ok<Json>(:final response) => Result.success(response['foo'] as String),
                          _ => const Result.failure('Not expected: orElse'),
                        };
                      },
                    ),
                    subject.execute<void, Result<String, String>>(
                      const PutRequest(
                        '/bar',
                        data: NetworkRequestBody.empty(),
                      ),
                      onResponse: (response) {
                        return switch (response) {
                          Ok<Json>(:final response) => Result.success(response['foo'] as String),
                          _ => const Result.failure('Not expected: orElse'),
                        };
                      },
                    ),
                    subject.execute<void, Result<String, String>>(
                      const DeleteRequest(
                        '/baz',
                        data: NetworkRequestBody.empty(),
                      ),
                      onResponse: (response) {
                        return switch (response) {
                          Ok<Json>(:final response) => Result.success(response['foo'] as String),
                          _ => const Result.failure('Not expected: orElse'),
                        };
                      },
                    ),
                  ]);

                  expect(
                    mutativeRequestSuccessRequests.map((e) => e.path),
                    contains('/foo'),
                  );
                  expect(
                    mutativeRequestSuccessRequests.map((e) => e.path),
                    contains('/bar'),
                  );
                  expect(
                    mutativeRequestSuccessRequests.map((e) => e.path),
                    contains('/baz'),
                  );
                });
              });

              group('and the response has status codes other than 200 or 204', () {
                setUp(() {
                  charlatan
                    ..whenPost(
                      '/foo',
                      (request) => CharlatanHttpResponse(
                        body: <String, dynamic>{},
                        statusCode: 404,
                      ),
                    )
                    ..whenPut(
                      '/bar',
                      (request) => CharlatanHttpResponse(
                        body: <String, dynamic>{},
                        statusCode: 422,
                      ),
                    )
                    ..whenDelete(
                      '/baz',
                      (request) => CharlatanHttpResponse(
                        body: <String, dynamic>{},
                        statusCode: 500,
                      ),
                    );
                });

                test('it does not emit a MutativeRequestSuccess event', () async {
                  final subject = buildSubject();
                  await Future.wait([
                    subject.execute<void, Result<String, String>>(
                      const PostRequest(
                        '/foo',
                        data: NetworkRequestBody.empty(),
                      ),
                      onResponse: (response) {
                        return switch (response) {
                          Ok<Json>(:final response) => Result.success(response['foo'] as String),
                          _ => const Result.failure('Not expected: orElse'),
                        };
                      },
                    ),
                    subject.execute<void, Result<String, String>>(
                      const PutRequest(
                        '/bar',
                        data: NetworkRequestBody.empty(),
                      ),
                      onResponse: (response) {
                        return switch (response) {
                          Ok<Json>(:final response) => Result.success(response['foo'] as String),
                          _ => const Result.failure('Not expected: orElse'),
                        };
                      },
                    ),
                    subject.execute<void, Result<String, String>>(
                      const DeleteRequest(
                        '/baz',
                        data: NetworkRequestBody.empty(),
                      ),
                      onResponse: (response) {
                        return switch (response) {
                          Ok<Json>(:final response) => Result.success(response['foo'] as String),
                          _ => const Result.failure('Not expected: orElse'),
                        };
                      },
                    ),
                  ]);

                  expect(mutativeRequestSuccessRequests.isEmpty, true);
                });
              });
            });
          });
        });

        group('when response is unsuccessful', () {
          const defaultPath = '/foo';
          void setupErrorResponse({
            required int statusCode,
            String path = defaultPath,
            Object? body,
          }) {
            charlatan.whenGet(
              path,
              (request) => CharlatanHttpResponse(
                statusCode: statusCode,
                body: body,
              ),
            );
          }

          group('when status code is 401', () {
            setUp(() {
              setupErrorResponse(statusCode: 401);
            });

            test('it emits an authFailure event and invokes unauthorized', () async {
              final response = await buildSubject().execute<Json, Result<bool, String>>(
                const GetRequest(defaultPath),
                onResponse: (response) {
                  return switch (response) {
                    Unauthorized() => const Result.success(true),
                    _ => const Result.failure('Not expected: orElse'),
                  };
                },
              );

              expect(authFailureRequests.single.path, '/foo');

              response.when(
                success: (s) => expect(s, isTrue),
                failure: fail,
              );
            });
          });

          group('when status code is 403', () {
            setUp(() {
              setupErrorResponse(statusCode: 403);
            });

            test('it returns forbidden', () async {
              final response = await buildSubject().execute<Json, Result<bool, String>>(
                const GetRequest(defaultPath),
                onResponse: (response) {
                  return switch (response) {
                    Forbidden() => const Result.success(true),
                    _ => const Result.failure('Not expected: orElse'),
                  };
                },
              );

              response.when(
                success: (s) => expect(s, isTrue),
                failure: fail,
              );
            });
          });

          group('when status code is 404', () {
            setUp(() {
              setupErrorResponse(statusCode: 404);
            });

            test('it returns notFound', () async {
              final response = await buildSubject().execute<Json, Result<bool, String>>(
                const GetRequest(defaultPath),
                onResponse: (response) {
                  return switch (response) {
                    NotFound() => const Result.success(true),
                    _ => const Result.failure('Not expected: orElse'),
                  };
                },
              );

              response.when(
                success: (s) => expect(s, isTrue),
                failure: fail,
              );
            });
          });

          group('when status code is 422', () {
            setUp(() {
              setupErrorResponse(
                statusCode: 422,
                body: const Foo(message: 'error').toJson(),
              );
            });

            test('it returns unprocessableEntity', () async {
              final response = await buildSubject().execute<Json, Result<bool, String>>(
                const GetRequest(defaultPath),
                onResponse: (response) {
                  return switch (response) {
                    UnprocessableEntity() => const Result.success(true),
                    _ => const Result.failure('Not expected: orElse'),
                  };
                },
              );

              response.when(
                success: (s) => expect(s, isTrue),
                failure: fail,
              );
            });
          });

          group('when status code is 426', () {
            setUp(() {
              setupErrorResponse(
                statusCode: 426,
                body: const Foo(message: 'error').toJson(),
              );
            });

            test('it returns upgradeRequired', () async {
              final response = await buildSubject().execute<Json, Result<bool, String>>(
                const GetRequest(defaultPath),
                onResponse: (response) {
                  return switch (response) {
                    UpgradeRequired() => const Result.success(true),
                    _ => const Result.failure('Not expected: orElse'),
                  };
                },
              );

              response.when(
                success: (s) => expect(s, isTrue),
                failure: fail,
              );
            });
          });

          group('when status code is 500', () {
            setUp(() {
              setupErrorResponse(statusCode: 500);
            });

            test('it returns serverError', () async {
              final response = await buildSubject().execute<Json, Result<bool, String>>(
                const GetRequest(defaultPath),
                onResponse: (response) {
                  return switch (response) {
                    ServerError() => const Result.success(true),
                    _ => const Result.failure('Not expected: orElse'),
                  };
                },
              );

              response.when(
                success: (s) => expect(s, isTrue),
                failure: fail,
              );
            });
          });

          group('when status code is 503', () {
            setUp(() {
              setupErrorResponse(statusCode: 503);
            });

            test('it returns service unavailable', () async {
              final response = await buildSubject().execute<Json, Result<bool, String>>(
                const GetRequest(defaultPath),
                onResponse: (response) {
                  return switch (response) {
                    ServiceUnavailable() => const Result.success(true),
                    _ => const Result.failure('Not expected: orElse'),
                  };
                },
              );

              response.when(
                success: (s) => expect(s, isTrue),
                failure: fail,
              );
            });
          });

          group('when status code is unexpected', () {
            setUp(() {
              setupErrorResponse(statusCode: 999);
            });

            test('it returns genericError', () async {
              final response = await buildSubject().execute<Json, Result<bool, String>>(
                const GetRequest(defaultPath),
                onResponse: (response) {
                  return switch (response) {
                    GenericError() => const Result.success(true),
                    _ => const Result.failure('Not expected: orElse'),
                  };
                },
              );

              response.when(
                success: (s) => expect(s, isTrue),
                failure: fail,
              );
            });
          });

          group('when connection issue occurs', () {
            setUp(() {
              charlatan.whenGet(
                '/foo',
                (request) => throw const SocketException('Oops'),
              );
            });

            test('it returns genericError and isConnectionIssue is true', () async {
              final response = await buildSubject().execute<Json, Result<bool, String>>(
                const GetRequest(defaultPath),
                onResponse: (response) {
                  return switch (response) {
                    GenericError(:final isConnectionIssue) => () {
                        {
                          expect(isConnectionIssue, isTrue);
                          return const Result<bool, String>.success(true);
                        }
                      }(),
                    _ => const Result.failure('Not expected: orElse'),
                  };
                },
              );

              response.when(
                success: (s) => expect(s, isTrue),
                failure: fail,
              );
            });
          });

          group('RetryBehavior', () {
            group('when retry behavior is Retry', () {
              test('it retries maxRetries times', () async {
                var requestCount = 0;
                charlatan.whenGet(
                  '/foo',
                  (request) {
                    requestCount++;
                    return CharlatanHttpResponse(statusCode: 522);
                  },
                );

                final response = await buildSubject().execute<Json, Result<bool, String>>(
                  const GetRequest(
                    defaultPath,
                    retryBehavior: Retry(
                      maxRetries: 3,
                      retryInterval: Duration(milliseconds: 100),
                    ),
                  ),
                  onResponse: (response) {
                    return switch (response) {
                      GenericError() => const Result.success(true),
                      _ => const Result.failure('Not expected: orElse'),
                    };
                  },
                );

                expect(
                  response.when(
                    success: (s) => s,
                    failure: fail,
                  ),
                  isTrue,
                );
                // maxRetries + 1
                expect(requestCount, 4);
              });
            });

            group('when retry behavior is NeverRetry', () {
              test('it does not retry', () async {
                var requestCount = 0;
                charlatan.whenGet(
                  '/foo',
                  (request) {
                    requestCount++;
                    return CharlatanHttpResponse(statusCode: 522);
                  },
                );

                final response = await buildSubject().execute<Json, Result<bool, String>>(
                  const GetRequest(
                    defaultPath,
                    retryBehavior: NeverRetry(),
                  ),
                  onResponse: (response) {
                    return switch (response) {
                      GenericError() => const Result.success(true),
                      _ => const Result.failure('Not expected: orElse'),
                    };
                  },
                );

                expect(
                  response.when(
                    success: (s) => s,
                    failure: fail,
                  ),
                  isTrue,
                );
                expect(requestCount, 1);
              });
            });

            group('RetryBehavior priority', () {
              test('it prefers local RetryBehavior to global', () async {
                var requestCount = 0;
                charlatan.whenGet(
                  '/foo',
                  (request) {
                    requestCount++;
                    return CharlatanHttpResponse(statusCode: 522);
                  },
                );

                final response = await buildSubject(
                  retryBehavior: NeverRetry(),
                ).execute<Json, Result<bool, String>>(
                  const GetRequest(
                    defaultPath,
                    retryBehavior: Retry(
                      maxRetries: 2,
                      retryInterval: Duration(milliseconds: 100),
                    ),
                  ),
                  onResponse: (response) {
                    return switch (response) {
                      GenericError() => const Result.success(true),
                      _ => const Result.failure('Not expected: orElse'),
                    };
                  },
                );

                expect(
                  response.when(
                    success: (s) => s,
                    failure: fail,
                  ),
                  isTrue,
                );
                expect(requestCount, 3);
              });
            });

            group('RetryBehavior priority', () {
              test('it allows overriding retryClause', () async {
                var requestCount = 0;
                final statusCode = defaultRetryStatusCodes.first;
                charlatan.whenGet(
                  '/foo',
                  (request) {
                    requestCount++;
                    return CharlatanHttpResponse(statusCode: statusCode);
                  },
                );

                final response = await buildSubject(
                  retryBehavior: NeverRetry(),
                ).execute<Json, Result<bool, String>>(
                  GetRequest(
                    defaultPath,
                    retryBehavior: Retry(
                      maxRetries: 2,
                      retryInterval: Duration(milliseconds: 100),
                      retryClause: (r) {
                        // Body will be `null`; essentially disallow retrying
                        return r != null;
                      },
                    ),
                  ),
                  onResponse: (response) {
                    return switch (response) {
                      GenericError() => const Result.success(true),
                      _ => const Result.failure('Not expected: orElse'),
                    };
                  },
                );

                expect(
                  response.when(
                    success: (s) => s,
                    failure: fail,
                  ),
                  isTrue,
                );
                expect(requestCount, 1);
              });
            });
          });
        });
      });
    });
  });
}

/// A simple representation of the result of a procedure that can fail, like
/// a network request.
@freezed
class Result<S, F> with _$Result<S, F> {
  const factory Result.success(S success) = _Success;

  const factory Result.failure(F failure) = _Failure;
}

class _FakeInterceptor extends Interceptor {
  final Function(RequestOptions options)? onRequestInvoked;

  _FakeInterceptor({this.onRequestInvoked});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    onRequestInvoked?.call(options);
    super.onRequest(options, handler);
  }
}

class _SturdyHttpEventListener extends SturdyHttpEventListener {
  final void Function(RequestOptions) onAuthFailure;
  final void Function(RequestOptions, Exception, StackTrace?) onDecodingError;
  final void Function(RequestOptions) onMutativeRequestSuccess;

  _SturdyHttpEventListener({
    required this.onAuthFailure,
    required this.onDecodingError,
    required this.onMutativeRequestSuccess,
  });

  @override
  Future<void> onEvent(SturdyHttpEvent event) async {
    event.when(
      decodingError: onDecodingError,
      authFailure: onAuthFailure,
      mutativeRequestSuccess: onMutativeRequestSuccess,
    );
  }
}

@freezed
class Foo with _$Foo {
  const factory Foo({required String message}) = _Foo;

  factory Foo.fromJson(Json json) => _$FooFromJson(json);
}

@freezed
class NotFoo with _$NotFoo {
  const factory NotFoo({required String notMessage}) = _NotFoo;

  factory NotFoo.fromJson(Json json) => _$NotFooFromJson(json);
}
