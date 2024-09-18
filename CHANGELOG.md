## 0.5.1

## What's Changed
* fix: loosen collection constraint by @btrautmann in https://github.com/Betterment/sturdy_http/pull/16


**Full Changelog**: https://github.com/Betterment/sturdy_http/compare/v0.5.0...v0.5.1

## 0.5.0

## What's Changed
* refactor: make network response a sealed class by @btrautmann in https://github.com/Betterment/sturdy_http/pull/14


**Full Changelog**: https://github.com/Betterment/sturdy_http/compare/v0.4.0...v0.5.0

## 0.4.0

## What's Changed
* feat: Add support for `426: Upgrade Required` by @willlockwood in https://github.com/Betterment/sturdy_http/pull/12

## New Contributors
* @willlockwood made their first contribution in https://github.com/Betterment/sturdy_http/pull/12

**Full Changelog**: https://github.com/Betterment/sturdy_http/compare/v0.3.1...v0.4.0

## 0.3.1

## What's Changed
* fix: export retry_behavior by @btrautmann in https://github.com/Betterment/sturdy_http/pull/10

**Full Changelog**: https://github.com/Betterment/sturdy_http/compare/v0.3.0...v0.3.1

## 0.3.0

## What's Changed
* feat: support retrying failed requests by @btrautmann in https://github.com/Betterment/sturdy_http/pull/8

**Full Changelog**: https://github.com/Betterment/sturdy_http/compare/v0.2.0...v0.3.0

## 0.2.0

## What's Changed
* chore: update outdated dependencies by @ClaireDavis in https://github.com/Betterment/sturdy_http/pull/6

## New Contributors
* @ClaireDavis made their first contribution in https://github.com/Betterment/sturdy_http/pull/6

**Full Changelog**: https://github.com/Betterment/sturdy_http/compare/v0.1.0...v0.2.0

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
