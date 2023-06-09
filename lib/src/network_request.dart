import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sturdy_http/sturdy_http.dart';

part 'network_request.freezed.dart';

/// {@template network_request_type}
///
/// A type representing the available HTTP request methods.
///
/// {@endtemplate}
// ignore: constant_identifier_names, public_member_api_docs
enum NetworkRequestType { Get, Post, Put, Delete }

/// {@template network_request}
///
/// The base class representing a request to be executed
/// by [SturdyHttp].
///
/// {@endtemplate}
abstract class NetworkRequest {
  /// {@macro network_request}
  const NetworkRequest({
    required this.type,
    required this.path,
    required this.data,
    required this.shouldTriggerDataMutation,
    this.queryParams,
    this.headers,
  });

  /// {@macro network_request_type}
  final NetworkRequestType type;

  /// The path of the requested resource
  final String path;

  ///
  final NetworkRequestBody data;

  /// Whether this request should be considered as mutative. If false,
  /// [SturdyHttp] will not emit an [SturdyHttpEvent.mutativeRequestSuccess]
  /// event.
  final bool shouldTriggerDataMutation;

  /// Query parameters for this request
  final Map<String, dynamic>? queryParams;

  /// Headers for this request
  final Map<String, String>? headers;
}

/// {@template get_request}
/// A [NetworkRequest] with [NetworkRequestType.Get].
/// {@endtemplate}
class GetRequest extends NetworkRequest {
  /// {@macro get_request}
  const GetRequest(
    String path, {
    super.data = const NetworkRequestBody.empty(),
    Map<String, dynamic>? queryParameters,
    super.headers,
  }) : super(
          type: NetworkRequestType.Get,
          path: path,
          shouldTriggerDataMutation: false,
          queryParams: queryParameters,
        );
}

/// {@template post_request}
/// A [NetworkRequest] with [NetworkRequestType.Post].
/// {@endtemplate}
class PostRequest extends NetworkRequest {
  /// {@macro post_request}
  const PostRequest(
    String path, {
    required super.data,
    Map<String, dynamic>? queryParameters,
    super.shouldTriggerDataMutation = true,
    super.headers,
  }) : super(
          type: NetworkRequestType.Post,
          path: path,
          queryParams: queryParameters,
        );
}

/// {@template put_request}
/// A [NetworkRequest] with [NetworkRequestType.Put].
/// {@endtemplate}
class PutRequest extends NetworkRequest {
  /// {@macro put_request}
  const PutRequest(
    String path, {
    required super.data,
    Map<String, dynamic>? queryParameters,
    super.shouldTriggerDataMutation = true,
    super.headers,
  }) : super(
          type: NetworkRequestType.Put,
          path: path,
          queryParams: queryParameters,
        );
}

/// {@template delete_request}
/// A [NetworkRequest] with [NetworkRequestType.Delete].
/// {@endtemplate}
class DeleteRequest extends NetworkRequest {
  /// {@macro delete_request}
  const DeleteRequest(
    String path, {
    super.data = const NetworkRequestBody.empty(),
    Map<String, dynamic>? queryParameters,
    super.shouldTriggerDataMutation = true,
    super.headers,
  }) : super(
          type: NetworkRequestType.Delete,
          path: path,
          queryParams: queryParameters,
        );
}

/// The body of a [NetworkRequest].
@freezed
class NetworkRequestBody with _$NetworkRequestBody {
  /// An empty body. Results in `null` being passed to `data` of the request.
  const factory NetworkRequestBody.empty() = _Empty;

  /// A JSON body. Passed directly to `data` of the request.
  const factory NetworkRequestBody.json(Json data) = _Json;
}
