import 'package:crypto_currency_data/domain/service/settings.dart';

abstract class GetThemeUseCase {
  Future<String> call();
}

class RestGetThemeUseCase implements GetThemeUseCase {
  final SettingsService _service;

  RestGetThemeUseCase(this._service);

  @override
  Future<String> call() => _service.getTheme();
}
