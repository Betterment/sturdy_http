import 'dart:io';

import 'package:dio/dio.dart';

// ignore: public_member_api_docs
extension DioExceptionX on DioException {
  /// Indicates whether we have reason to believe a [DioException] occurred
  /// because of an issue with the internet connection. These checks/values
  /// are mostly curated through experience with Sentry issues and a sprinkle
  /// of common sense. If we have reason to believe we're over or under
  /// capturing [DioExceptionType]s or [Exception] types we can adjust the logic.
  bool isConnectionIssue() {
    const knownBadConnectionTypes = [
      DioExceptionType.connectionError,
      DioExceptionType.connectionTimeout,
      DioExceptionType.receiveTimeout,
      DioExceptionType.sendTimeout,
      DioExceptionType.unknown,
    ];
    final isKnownExceptionType =
        error is HandshakeException ||
        error is SocketException ||
        error is HttpException;
    return knownBadConnectionTypes.contains(type) || isKnownExceptionType;
  }
}
