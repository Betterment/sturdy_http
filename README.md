# SturdyHttp

[![pub package](https://img.shields.io/pub/v/sturdy_http.svg)](https://pub.dev/packages/sturdy_http)
[![Build status](https://github.com/Betterment/sturdy_http/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/Betterment/sturdy_http/actions/workflows/ci.yml?query=branch%3Amain)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/Betterment/sturdy_http/pulse)

A strongly typed, event-based, reliable HTTP client that wraps `Dio`.

## Features

`SturdyHttp` is a very opinionated HTTP client that offers an idiomatic API for interacting with a `Dio` instance. This includes:

- Executing requests that are actual objects themselves (see `NetworkRequest`)
- Event-based notifications of things you want to know about during request execution (see `SturdyHttpEventListener`)
- Worker `Isolate` deserialization to avoid bogging down the main `Isolate` (see `Deserializer`)
- Clear enumeration of response types (see `NetworkResponse`)

> **Note:** At Betterment, we've used `SturdyHttp` internally for the past year. It's been battle-tested across over 200 network request call sites throughout the application and its opinionated nature is a direct result of this experimentation. We're always open to making it more flexible if it makes sense to do so; feel free to drop an Issue to discuss doing so!

## Usage

Start by creating your `SturdyHttp` instance, likely during application bootstrap:

```dart
return SturdyHttp(
  baseUrl: '$baseUrl/api/',
  eventListener: eventListener,
  interceptors: interceptors,
);
```

Then, execute requests:

```dart
Future<Result<MyData>> fetch({required int id}) async {
  return _client.execute<Json, MyData>(
    GetRequest('/v6/data/${id}'),
    onResponse: (r) => r.maybeWhen(
      ok: (json) => Result.success(MyData.fromJson),
      orElse: () => Result.failure(r),
    ),
  );
}
```
Note: because `Result` types are _very_ opinionated, `SturdyHttp` does not return a `Result` but rather the generic type provided to `execute` (and returned by `onResponse`). If this type fails to be
deserialized, an `Exception` will be thrown. This can be managed by adding an extension on top of the client itself, which is how we interact with the client ourselves. For example:

```dart
extension SturdyHttpX on SturdyHttp {
  /// Invokes [execute] on the [SturdyHttp] and conforms its result to a [Result]
  /// based on the provided [onResponse].
  ///
  /// In the event that an [Exception] is thrown by [execute], the returned
  /// [Result]s right-side will contain a [NetworkError] describing the [Exception]
  Future<Result<M, NetworkError>> executeForResult<R, M extends Object>(
    NetworkRequest request, {
    required Result<M, NetworkError> Function(NetworkResponse<R> response) onResponse,
  }) async {
    return Result.fromAsync(
      () => execute(
        request,
        onResponse: onResponse,
      ),
    ).match(ok: (o) => o, error: (e) => Result.error(NetworkError.forException(e)));
  }
}
```

## Contributing

If you run into a bug or limitation when using `SturdyHttp`, we'd love your help in resolving it. First, it would be awesome if you could [open an issue](https://github.com/Betterment/sturdy_http/issues/new/choose) to discuss. If we feel like we should move forward with a change and you're willing to contribute, create a fork of `SturdyHttp` and open a PR against the main repo.
