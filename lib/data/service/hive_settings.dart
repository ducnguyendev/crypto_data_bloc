import 'package:crypto_currency_data/data/gateway/settings.dart';
import 'package:crypto_currency_data/domain/service/settings.dart';

class HiveSettingsService implements SettingsService {
  final SettingsGateway _gateway;
  HiveSettingsService(this._gateway);

  @override
  Future<String> getTheme() => _gateway.getTheme();

  @override
  Future<String> selectTheme(String themeType) =>
      _gateway.selectTheme(themeType);
}
