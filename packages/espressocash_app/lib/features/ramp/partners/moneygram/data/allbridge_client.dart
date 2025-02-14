import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import 'allbridge_dto.dart';
part 'allbridge_client.g.dart';

@RestApi(baseUrl: 'https://allbridge.espressocash.com')
@injectable
abstract class AllbridgeApiClient {
  @factoryMethod
  factory AllbridgeApiClient() => _AllbridgeApiClient(Dio());

  @GET('/transfer/status')
  Future<BridgeStatusResponseDto> fetchBridgeStatus(
    @Queries() BridgeStatusRequestDto requestDto,
  );

  @GET('/raw/stellar/restore')
  Future<String> restoreStellarTx(
    @Queries() RestoreStellarTxRequestDto requestDto,
  );
}

extension AllbridgeApiClientX on AllbridgeApiClient {
  Future<BridgeStatusResponseDto?> fetchStatus({
    required Chain chain,
    required String hash,
  }) async {
    try {
      return await fetchBridgeStatus(
        BridgeStatusRequestDto(chain: chain, txId: hash),
      );
    } on Exception catch (error) {
      if (error is DioException && error.response?.statusCode == 400) {
        return null;
      }
      rethrow;
    }
  }
}
