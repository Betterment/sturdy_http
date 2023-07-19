## 0.1.0

- Add ability to provide `CancelToken` as well as send and receive progress callbacks to `NetworkRequest`s

:warning: **Breaking Changes:**

- Remove ability to provide `headers` to `NetworkRequest`s. Instead, pass `Options`.
- Migrate to `DioException` from the deprecated `DioError`.
- Remove proxy configuration on the underlying `Dio` instance during construction of `SturdyHttp`. If you want to configure proxy information, do it via an `Interceptor`.
- Add `inferContentType` parameter to constructor. This defaults to `true`. The previous behavior was no _not_ infer content-type header by default.

## 0.0.2

- Correct library name

## 0.0.1

- Initial version
