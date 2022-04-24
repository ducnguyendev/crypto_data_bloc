
import 'package:bloc_test/bloc_test.dart';
import 'package:crypto_currency_data/backbone/dependency_injection.dart' as di;
import 'package:crypto_currency_data/presentation/bloc/chart/bloc.dart';
import 'package:test/test.dart';

void main() {
  late ChartBloc _chartBloc;

  setUp(() {
    di.init();
    _chartBloc = di.sl.get();
  });

  group('Get History Data', () {
    blocTest(
      'Get History Data 1 week',
      build: () => _chartBloc,
      act: (ChartBloc bloc) => _chartBloc.add(ChartEvent.getHistoryData(DateTime.now().subtract(const Duration(days: 8)), DateTime.now())),
      expect: () => [_chartBloc.loadingState()],
    );
  });
}