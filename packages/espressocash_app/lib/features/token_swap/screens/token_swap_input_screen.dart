import 'dart:async';

import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../di.dart';
import '../../../gen/assets.gen.dart';
import '../../../l10n/device_locale.dart';
import '../../../l10n/l10n.dart';
import '../../../ui/amount_keypad/amount_keypad.dart';
import '../../../ui/app_bar.dart';
import '../../../ui/bottom_button.dart';
import '../../../ui/button.dart';
import '../../../ui/colors.dart';
import '../../../ui/loader.dart';
import '../../../ui/scaling_text.dart';
import '../../../ui/theme.dart';
import '../../../ui/value_stream_builder.dart';
import '../../../utils/flow.dart';
import '../../conversion_rates/data/repository.dart';
import '../../conversion_rates/services/token_fiat_balance_service.dart';
import '../../conversion_rates/widgets/extensions.dart';
import '../../currency/models/amount.dart';
import '../../currency/models/currency.dart';
import '../../tokens/token.dart';
import '../models/swap_seed.dart';
import '../services/quote_service.dart';
import '../widgets/token_picker.dart';
import 'token_swap_review_screen.dart';

class TokenSwapInputScreen extends StatefulWidget {
  const TokenSwapInputScreen({super.key, required this.initialToken});

  static void push(BuildContext context, {required Token initialToken}) =>
      Navigator.of(context).push<void>(
        MaterialPageRoute(
          builder: (context) =>
              TokenSwapInputScreen(initialToken: initialToken),
        ),
      );

  final Token initialToken;

  @override
  State<TokenSwapInputScreen> createState() => _TokenSwapInputScreenState();
}

class _TokenSwapInputScreenState extends State<TokenSwapInputScreen> {
  final _inputAmountController = TextEditingController();
  final _outputAmountController = TextEditingController();

  late Token _inputToken;
  late Token _outputToken;

  Decimal _inputTokenRate = Decimal.fromInt(0);
  Decimal _outputTokenRate = Decimal.fromInt(0);

  double _amountInputWidth = 180.w;
  double _symbolInputWidth = 180.w;

  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _inputToken = widget.initialToken;
    _outputToken = Token.usdc;

    _updateRate(_inputToken, _outputToken);

    sl<QuoteService>().addListener(_handleQuoteUpdate);

    _inputAmountController.addListener(_handleAmountChanged);
  }

  void _handleQuoteUpdate() {
    if (!mounted) return;

    final quoteState = sl<QuoteService>().value;

    switch (quoteState) {
      case FlowSuccess(:final result):
        final output = result.seed.output;

        _outputAmountController.text =
            output.format(context.locale, maxDecimals: 2, skipSymbol: true);

      case FlowFailure():
        _outputAmountController.text = '';

      default:
        break;
    }
  }

  void _updateQuote() {
    final amount = Decimal.tryParse(_inputAmountController.text);

    if (amount == null) return;

    final inputAmount = Amount.fromDecimal(
      value: amount,
      currency: CryptoCurrency(token: _inputToken),
    ) as CryptoAmount;

    sl<QuoteService>().updateInput(
      inputAmount: inputAmount,
      outputToken: _outputToken,
      slippage: Slippage.zpFive,
    );
  }

  @override
  void dispose() {
    sl<QuoteService>()
      ..removeListener(_handleQuoteUpdate)
      ..clear();

    _inputAmountController.dispose();
    _outputAmountController.dispose();
    super.dispose();
  }

  void _handleAmountChanged() {
    if (_inputAmountController.text.isEmpty) {
      setState(() {
        _amountInputWidth = 180.w;
        _symbolInputWidth = 180.w;
        _isExpanded = false;
      });
      _outputAmountController.text = '';

      return;
    }

    setState(() {
      _amountInputWidth = 260.w;
      _symbolInputWidth = 100.w;
      _isExpanded = true;
    });

    _updateQuote();
  }

  Future<void> _handleSwitchTokens() async {
    final tempToken = _inputToken;
    final tempAmount = _inputAmountController.text;
    if (!mounted) return;

    setState(() {
      _inputToken = _outputToken;
      _outputToken = tempToken;
      _inputAmountController.text = _outputAmountController.text;
      _outputAmountController.text = tempAmount;
    });

    await _updateRate(_inputToken, _outputToken);
  }

  Future<void> _updateRate(Token inputToken, Token outputToken) async {
    await sl<ConversionRatesRepository>()
        .refresh(defaultFiatCurrency, [inputToken, outputToken]);
    _inputTokenRate = sl<ConversionRatesRepository>().readRate(
          CryptoCurrency(token: _inputToken),
          to: defaultFiatCurrency,
        ) ??
        Decimal.zero;
    _outputTokenRate = sl<ConversionRatesRepository>().readRate(
          CryptoCurrency(token: _outputToken),
          to: defaultFiatCurrency,
        ) ??
        Decimal.zero;
  }

  @override
  Widget build(BuildContext context) => ValueStreamBuilder<CryptoFiatAmount>(
        create: () => (
          sl<TokenFiatBalanceService>()
              .readInvestmentBalance(widget.initialToken),
          (
            Amount.zero(currency: Currency.usdc) as CryptoAmount,
            Amount.zero(currency: Currency.usd) as FiatAmount
          )
        ),
        builder: (context, value) {
          final crypto = value.$1;

          final fiatRateInput = Amount.fromDecimal(
            value: _inputTokenRate,
            currency: Currency.usd,
          );

          final fiatRateOutput = Amount.fromDecimal(
            value: _outputTokenRate,
            currency: Currency.usd,
          );

          return CpTheme.dark(
            child: Scaffold(
              appBar: CpAppBar(
                title: Text(context.l10n.swap),
                nextButton: const _LoadingIndicator(),
              ),
              backgroundColor: CpColors.deepGreyColor,
              body: SafeArea(
                top: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 23.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 25.w),
                            child: Text(
                              context.l10n.youPay,
                              style: TextStyle(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AnimatedContainer(
                                curve: Curves.easeInOut,
                                duration: const Duration(milliseconds: 300),
                                width: _amountInputWidth,
                                child: _TokenAmountInput(
                                  controller: _inputAmountController,
                                  crypto: crypto,
                                  fiatRate: fiatRateInput,
                                  showMaxButton: true,
                                ),
                              ),
                              AnimatedContainer(
                                curve: Curves.easeInOut,
                                duration: const Duration(milliseconds: 300),
                                width: _symbolInputWidth,
                                height: _inputHeight,
                                child: TokenPicker(
                                  title: context.l10n.youPay,
                                  onSubmitted: (value) async {
                                    await _updateRate(value, _outputToken);
                                    if (!mounted) return;
                                    setState(() {
                                      _inputToken = value;
                                    });
                                  },
                                  token: _inputToken,
                                  isExpanded: !_isExpanded,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 32.h),
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5.h),
                          child: const Divider(
                            thickness: 1,
                            color: CpColors.darkDividerColor,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: ColoredBox(
                            color: CpColors.deepGreyColor,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.w),
                              child: GestureDetector(
                                onTap: _handleSwitchTokens,
                                child: Assets.icons.swap
                                    .svg(height: 26.h, width: 18.w),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 23.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 25.w),
                            child: Row(
                              children: [
                                Text(
                                  context.l10n.youReceive,
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 8.w),
                                ListenableBuilder(
                                  listenable: sl<QuoteService>(),
                                  builder: (context, _) {
                                    final state = sl<QuoteService>().value;
                                    if (state case FlowFailure()) {
                                      return Text(
                                        'Failed to get quote',
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          color: CpColors.alertRedColor,
                                        ),
                                      );
                                    }

                                    return const SizedBox.shrink();
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AnimatedContainer(
                                curve: Curves.easeInOut,
                                duration: const Duration(milliseconds: 300),
                                width: _amountInputWidth,
                                child: _TokenAmountInput(
                                  controller: _outputAmountController,
                                  crypto: crypto,
                                  fiatRate: fiatRateOutput,
                                  showMaxButton: false,
                                ),
                              ),
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                width: _symbolInputWidth,
                                height: _inputHeight,
                                child: TokenPicker(
                                  title: context.l10n.youReceive,
                                  token: _outputToken,
                                  onSubmitted: (value) async {
                                    await _updateRate(_inputToken, value);
                                    if (!mounted) return;
                                    setState(() {
                                      _outputToken = value;
                                    });
                                  },
                                  isExpanded: !_isExpanded,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: AmountKeypad(
                        controller: _inputAmountController,
                        maxDecimals: _inputToken.decimals,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    ListenableBuilder(
                      listenable: sl<QuoteService>(),
                      builder: (context, _) {
                        final state = sl<QuoteService>().value;

                        return CpBottomButton(
                          text: context.l10n.reviewSwap,
                          onPressed: state.isSuccess
                              ? () {
                                  final quoteService = sl<QuoteService>();
                                  final quoteState = quoteService.value;
                                  final expiresAt = quoteService.expiresAt;

                                  if (!quoteState.isSuccess ||
                                      expiresAt == null ||
                                      DateTime.now().isAfter(expiresAt)) {
                                    return;
                                  }

                                  final route = switch (quoteState) {
                                    FlowSuccess(:final result) => result,
                                    _ => null,
                                  };

                                  if (route == null) return;

                                  TokenSwapReviewScreen.push(
                                    context,
                                    route: route,
                                  );
                                }
                              : null,
                        );
                      },
                    ),
                    SizedBox(height: 24.h),
                  ],
                ),
              ),
            ),
          );
        },
      );
}

class _TokenAmountInput extends StatefulWidget {
  const _TokenAmountInput({
    required this.controller,
    required this.crypto,
    required this.fiatRate,
    this.showMaxButton = false,
  });

  final TextEditingController controller;
  final CryptoAmount crypto;
  final Amount fiatRate;
  final bool showMaxButton;

  @override
  State<_TokenAmountInput> createState() => _TokenAmountInputState();
}

class _TokenAmountInputState extends State<_TokenAmountInput> {
  bool _showEquivalent = false;
  double _textHeight = 1.2;
  bool _isMax = false;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_quantityListener);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_quantityListener);
    super.dispose();
  }

  void _quantityListener() {
    final value = num.tryParse(widget.controller.text);
    final isValueValid = widget.controller.text.isNotEmpty;

    setState(() {
      _isMax = value != null && value == widget.crypto.decimal.toDouble();

      if (isValueValid) {
        _textHeight = 0.9;
        _showEquivalent = true;
      } else {
        _textHeight = 1.2;
        _showEquivalent = false;
      }
    });
  }

  void _handleMaxPress() => _isMax
      ? widget.controller.clear()
      : widget.controller.text = '${widget.crypto.decimal}';

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          Container(
            height: _inputHeight,
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
            decoration: const ShapeDecoration(
              color: CpColors.blackGreyColor,
              shape: StadiumBorder(),
            ),
            child: ValueListenableBuilder<TextEditingValue>(
              valueListenable: widget.controller,
              builder: (context, value, child) => Row(
                children: [
                  Expanded(
                    child: ScalingText(
                      text: value.text.isEmpty ? '0' : value.text,
                      style: TextStyle(
                        fontSize: 34.sp,
                        fontWeight: FontWeight.w700,
                        height: _textHeight,
                      ),
                    ),
                  ),
                  if (widget.showMaxButton) ...[
                    SizedBox(width: 12.w),
                    CpButton(
                      onPressed: _handleMaxPress,
                      text: _isMax ? context.l10n.clear : context.l10n.max,
                      minWidth: 54,
                      size: CpButtonSize.small,
                      variant: CpButtonVariant.inverted,
                    ),
                  ],
                ],
              ),
            ),
          ),
          Visibility(
            visible: _showEquivalent,
            child: Positioned(
              left: 26,
              bottom: 9,
              child: Text(
                r'≈ $' + _buildUsdcAmountText,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      );

  String get _buildUsdcAmountText =>
      ((num.tryParse(widget.controller.text) ?? 0) *
              widget.fiatRate.decimal.toDouble())
          .toStringAsFixed(2);
}

class _LoadingIndicator extends StatelessWidget {
  const _LoadingIndicator();

  @override
  Widget build(BuildContext context) => ListenableBuilder(
        listenable: sl<QuoteService>(),
        builder: (context, _) => sl<QuoteService>().value.isProcessing
            ? const LoadingIndicator()
            : const SizedBox.shrink(),
      );
}

const _inputHeight = 72.0;
