// ignore_for_file: invalid_annotation_target

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_db_store/dio_cache_interceptor_db_store.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../di.dart';

part 'coingecko_client.freezed.dart';
part 'coingecko_client.g.dart';

final _dio = Dio()
  ..interceptors.add(
    DioCacheInterceptor(
      options: CacheOptions(
        // store: DbCacheStore(),
        store: sl<DbCacheStore>(),
        maxStale: const Duration(days: 1),
      ),
    ),
  );

@injectable
@RestApi(baseUrl: 'https://api.coingecko.com/api/v3')
abstract class ChartCoingeckoClient {
  @factoryMethod
  factory ChartCoingeckoClient() => _ChartCoingeckoClient(_dio);

  @GET('/coins/{id}/market_chart')
  Future<TokenChartResponseDto> getCoinChart(
    @Path() String id,
    @Queries() TokenChartRequestDto request,
  );
}

@freezed
class TokenChartRequestDto with _$TokenChartRequestDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TokenChartRequestDto({
    @Default('usd') String vsCurrency,
    @Default('1') String days,
    String? interval,
  }) = _TokenChartRequestDto;

  factory TokenChartRequestDto.fromJson(Map<String, dynamic> json) =>
      _$TokenChartRequestDtoFromJson(json);
}

@freezed
class TokenChartResponseDto with _$TokenChartResponseDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TokenChartResponseDto({
    List<List<num>>? prices,
  }) = _TokenChartResponseDto;

  factory TokenChartResponseDto.fromJson(Map<String, dynamic> data) =>
      _$TokenChartResponseDtoFromJson(data);
}
