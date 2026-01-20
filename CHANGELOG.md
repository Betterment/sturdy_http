## 0.7.0

- feat: support capturing and emitting header values by @btrautmann in https://github.com/Betterment/sturdy_http/pull/27

## 0.6.2

- chore: loosen dart constraint by @btrautmann in https://github.com/Betterment/sturdy_http/pull/25

**Full Changelog**: https://github.com/Betterment/sturdy_http/compare/v0.6.1...v0.6.2

## 0.6.1

- fix: do not emit DecodingError when response is null by @btrautmann in https://github.com/Betterment/sturdy_http/pull/22

**Full Changelog**: https://github.com/Betterment/sturdy_http/compare/v0.6.0...v0.6.1

## 0.6.0

- chore: upgrade dependencies; remove freezed by @btrautmann in https://github.com/Betterment/sturdy_http/pull/19
- chore: add proper toString() implementations for NetworkResponse types by @btrautmann in https://github.com/Betterment/sturdy_http/pull/20

:warning: **Breaking Changes:**

- Please see individual PRs for details on breaking changes.

* **Full Changelog**: https://github.com/Betterment/sturdy_http/compare/v0.5.1...v0.6.0

## 0.5.1

- fix: loosen collection constraint by @btrautmann in https://github.com/Betterment/sturdy_http/pull/16

**Full Changelog**: https://github.com/Betterment/sturdy_http/compare/v0.5.0...v0.5.1

## 0.5.0

- refactor: make network response a sealed class by @btrautmann in https://github.com/Betterment/sturdy_http/pull/14

**Full Changelog**: https://github.com/Betterment/sturdy_http/compare/v0.4.0...v0.5.0

## 0.4.0

- feat: Add support for `426: Upgrade Required` by @willlockwood in https://github.com/Betterment/sturdy_http/pull/12

## New Contributors

- @willlockwood made their first contribution in https://github.com/Betterment/sturdy_http/pull/12

**Full Changelog**: https://github.com/Betterment/sturdy_http/compare/v0.3.1...v0.4.0

## 0.3.1

- fix: export retry_behavior by @btrautmann in https://github.com/Betterment/sturdy_http/pull/10

**Full Changelog**: https://github.com/Betterment/sturdy_http/compare/v0.3.0...v0.3.1

## 0.3.0

- feat: support retrying failed requests by @btrautmann in https://github.com/Betterment/sturdy_http/pull/8

**Full Changelog**: https://github.com/Betterment/sturdy_http/compare/v0.2.0...v0.3.0

## 0.2.0

- chore: update outdated dependencies by @ClaireDavis in https://github.com/Betterment/sturdy_http/pull/6

## New Contributors

- @ClaireDavis made their first contribution in https://github.com/Betterment/sturdy_http/pull/6

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
