import 'package:crypto_currency_data/data/model/get_history_data_response.dart';

class GetHistoryDataServiceResponse {
  GetHistoryDataServiceResponse({
    required this.response,
    required this.errorMessage,
    required this.errorCode,
  });
  final String errorMessage;
  final int errorCode;
  late final GetHistoryDataResponse? response;

}