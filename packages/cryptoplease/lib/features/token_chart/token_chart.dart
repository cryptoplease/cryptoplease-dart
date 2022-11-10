import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/user_preferences.dart';
import '../../../../ui/colors.dart';
import '../../core/tokens/token.dart';
import '../../di.dart';
import '../../ui/loader.dart';
import 'src/bloc.dart';
import 'src/chart_interval.dart';
import 'src/token_chart_item.dart';

class TokenChart extends StatelessWidget {
  const TokenChart({super.key, required this.token});

  final Token token;

  @override
  Widget build(BuildContext context) => BlocProvider<TokenChartBloc>(
        create: (_) => sl<TokenChartBloc>(param1: token)
          ..add(const FetchChartRequested(interval: ChartInterval.oneMonth)),
        child: BlocBuilder<TokenChartBloc, TokenChartState>(
          builder: (context, state) {
            final data = state.chart;
            final isLoading = state.processingState.isProcessing;

            return Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              height: 350,
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        _ChartWidget(data: data),
                        if (isLoading) const LoadingIndicator()
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  _ChartRangeSelector(
                    interval: state.interval,
                    onItemSelected: (interval) {
                      context.read<TokenChartBloc>().add(
                            FetchChartRequested(interval: interval),
                          );
                    },
                  ),
                ],
              ),
            );
          },
        ),
      );
}

class _ChartWidget extends StatelessWidget {
  const _ChartWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final IList<TokenChartItem> data;

  @override
  Widget build(BuildContext context) {
    final sign = context.read<UserPreferences>().fiatCurrency.sign;

    return LineChart(
      LineChartData(
        lineBarsData: [
          LineChartBarData(
            spots: data
                .map(
                  (e) => FlSpot(
                    e.date?.millisecondsSinceEpoch.toDouble() ?? 0.0,
                    e.price ?? 0,
                  ),
                )
                .toList(),
            isCurved: true,
            dotData: FlDotData(show: false),
            color: CpColors.chartLineColor,
            barWidth: 4,
          )
        ],
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(show: false),
        lineTouchData: LineTouchData(
          enabled: true,
          getTouchedSpotIndicator: (
            LineChartBarData barData,
            List<int> indicators,
          ) =>
              indicators.map(
            (int index) {
              final line = FlLine(
                color: Colors.grey,
                strokeWidth: 1,
                dashArray: [2, 4],
              );

              return TouchedSpotIndicatorData(
                line,
                FlDotData(show: true),
              );
            },
          ).toList(),
          touchTooltipData: LineTouchTooltipData(
            tooltipBgColor: CpColors.lightBackgroundColor,
            getTooltipItems: (touchedSpots) => touchedSpots.map(
              (LineBarSpot touchedSpot) {
                final price = data[touchedSpot.spotIndex].price ?? 0;

                return LineTooltipItem(
                  '$sign${price.toStringAsFixed(2)}',
                  const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                );
              },
            ).toList(),
          ),
          getTouchLineEnd: (_, __) => 0,
        ),
      ),
      swapAnimationDuration: Duration.zero,
    );
  }
}

class _ChartRangeSelector extends StatelessWidget {
  const _ChartRangeSelector({
    required this.onItemSelected,
    required this.interval,
  });

  final void Function(ChartInterval) onItemSelected;
  final ChartInterval interval;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ...ChartInterval.values
              .map(
                (e) => GestureDetector(
                  onTap: () => onItemSelected.call(e),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    decoration: interval == e
                        ? const ShapeDecoration(
                            shape: StadiumBorder(),
                            color: CpColors.darkBackgroundColor,
                          )
                        : null,
                    child: Text(
                      e.label,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ],
      );
}

extension on ChartInterval {
  String get label {
    switch (this) {
      case ChartInterval.oneDay:
        return '1D';
      case ChartInterval.oneWeek:
        return '1W';
      case ChartInterval.oneMonth:
        return '1M';
      case ChartInterval.threeMonth:
        return '3M';
      case ChartInterval.oneYear:
        return '1Y';
      case ChartInterval.all:
        return 'ALL';
    }
  }
}
