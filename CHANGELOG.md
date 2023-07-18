## 0.1.0

- Add ability to provide `CancelToken` as well as send and receive progress callbacks to `NetworkRequest`s
- Remove ability to provide `headers` to `NetworkRequest`s. Instead, pass `Options`.
- Migrate to `DioException` from the deprecated `DioError`.
- Remove proxy configuration on the underlying `Dio` instance during construction of `SturdyHttp`. If you want to configure proxy information, do it via an `Interceptor`.

## 0.0.2

- Correct library name

## 0.0.1

- Initial version
