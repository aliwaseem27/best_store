import 'package:flutter_riverpod/flutter_riverpod.dart';

class RiverpodObserver extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    print('''
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "newValue": "$newValue"
}''');
  }

  @override
  void didAddProvider(ProviderBase<Object?> provider, Object? value, ProviderContainer container) {
    print('''
{
  "provider": "${provider.name ?? provider.runtimeType}",
}''');
    super.didAddProvider(provider, value, container);
  }

  @override
  void didDisposeProvider(ProviderBase<Object?> provider, ProviderContainer container) {
    print('''
{
  "provider": "${provider.name ?? provider.runtimeType}",
}''');
    super.didDisposeProvider(provider, container);
  }
}
