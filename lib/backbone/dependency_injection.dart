import 'package:crypto_currency_data/data/gateway/settings.dart';
import 'package:crypto_currency_data/data/service/history_data_service_impl.dart';
import 'package:crypto_currency_data/data/service/hive_settings.dart';
import 'package:crypto_currency_data/domain/service/history_data.dart';
import 'package:crypto_currency_data/domain/service/settings.dart';
import 'package:crypto_currency_data/domain/usecase/get_history_data.dart';
import 'package:crypto_currency_data/domain/usecase/get_theme.dart';
import 'package:crypto_currency_data/domain/usecase/select_theme.dart';
import 'package:crypto_currency_data/presentation/bloc/chart/bloc.dart';
import 'package:crypto_currency_data/presentation/bloc/settings/bloc.dart';
import 'package:get_it/get_it.dart';

import '../data/gateway/rest.dart';

final GetIt sl = GetIt.instance;

void init() {
  //Gateway
  sl.registerLazySingleton<RestGateway>(() => RestGateway(
  ));
  //Gateway
  sl.registerLazySingleton<SettingsGateway>(() => SettingsGateway());

  //Service
  sl.registerLazySingleton<SettingsService>(
      () => HiveSettingsService(sl.get()));
  sl.registerLazySingleton<HistoryDataService>(
          () => HistoryDataServiceImpl(sl.get()));
  //UseCase
  sl.registerLazySingleton<GetThemeUseCase>(
      () => RestGetThemeUseCase(sl.get()));
  sl.registerLazySingleton<SelectThemeUseCase>(
      () => RestSelectThemeUseCase(sl.get()));
  sl.registerLazySingleton<GetHistoryDataUseCase>(
          () => RestGetHistoryDataUseCase(sl.get()));
  //Bloc
  sl.registerLazySingleton<SettingsBloc>(
      () => SettingsBloc(sl.get(), sl.get()));
  sl.registerLazySingleton<ChartBloc>(
          () => ChartBloc(sl.get()));
}
