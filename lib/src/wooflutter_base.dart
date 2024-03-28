part of '../wooflutter.dart';

class WooFlutter {
  final String appName;
  final String scope;
  final String userId;
  final String returnUrl;
  final String callbackUrl;

  static const List<String> validScopes = ['read', 'write', 'read_write'];

  WooFlutter._({
    required this.appName,
    required this.scope,
    required this.userId,
    required this.returnUrl,
    required this.callbackUrl,
  }) {
    assert(appName.isNotEmpty, 'App name cannot be empty');
    assert(validScopes.contains(scope), 'Invalid scope');
    assert(userId.isNotEmpty, 'User ID cannot be empty');
    assert(returnUrl.isNotEmpty, 'Return URL cannot be empty');
    assert(callbackUrl.isNotEmpty, 'Callback URL cannot be empty');
    assert(returnUrl.startsWith('https://'),
        'Return URL must start with "https://"');
    assert(callbackUrl.startsWith('https://'),
        'Callback URL must start with "https://"');
  }

  // Private static instance variable
  static WooFlutter? _instance;

  // Public static method to access the singleton instance
  static WooFlutter get instance {
    assert(
        _instance != null,
        'Singleton instance of WooFlutter has not been initialized. '
        'Call initialize method before accessing the instance.');
    return _instance!;
  }

  // Public static method to initialize the singleton instance
  static void initialize({
    required String appName,
    required String scope,
    required String userId,
    required String returnUrl,
    required String callbackUrl,
  }) {
    _instance ??= WooFlutter._(
      appName: appName,
      scope: scope,
      userId: userId,
      returnUrl: returnUrl,
      callbackUrl: callbackUrl,
    );
  }
}
