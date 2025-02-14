import 'package:flutter/material.dart';

import '../../../data/db/db.dart';
import '../../../di.dart';
import '../../../l10n/device_locale.dart';
import '../../../l10n/l10n.dart';
import '../../../ui/app_bar.dart';
import '../../../ui/colors.dart';
import '../../../ui/text_field.dart';
import '../../../ui/theme.dart';
import '../../conversion_rates/widgets/extensions.dart';
import '../../currency/models/amount.dart';
import '../../currency/models/currency.dart';
import '../../tokens/data/extensions.dart';
import '../../tokens/data/token_repository.dart';
import '../../tokens/token.dart';
import '../../tokens/widgets/token_icon.dart';

class TokenPickerScreen extends StatelessWidget {
  const TokenPickerScreen({
    super.key,
    this.initial,
    required this.title,
  });

  static Future<Token?> push(
    BuildContext context, {
    Token? initial,
    required String title,
  }) =>
      Navigator.of(context).push<Token?>(
        MaterialPageRoute(
          builder: (context) =>
              TokenPickerScreen(initial: initial, title: title),
        ),
      );

  final Token? initial;
  final String title;

  @override
  Widget build(BuildContext context) => CpTheme.dark(
        child: Scaffold(
          backgroundColor: CpColors.deepGreyColor,
          appBar: CpAppBar(
            title: Text(title.toUpperCase()),
            leading: const SizedBox(),
            nextButton: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Icon(Icons.close),
                ),
              ),
            ),
          ),
          body: const _Content(initial: Token.usdc),
        ),
      );
}

class _Content extends StatefulWidget {
  const _Content({this.initial});

  final Token? initial;

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  late final Future<List<TokenRow>> _tokensFuture;

  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  Token? _selectedToken;
  String _searchText = '';

  @override
  void initState() {
    super.initState();
    _tokensFuture = sl<TokenRepository>().getAll();
    _selectedToken = widget.initial;

    _searchController.addListener(() {
      setState(() => _searchText = _searchController.text);
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: CpTextField(
              controller: _searchController,
              padding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 14.75),
              fontSize: 16,
              border: CpTextFieldBorder.stadium,
              placeholder: context.l10n.searchPlaceholder,
              backgroundColor: CpColors.blackGreyColor,
              textColor: Colors.white,
              inputType: TextInputType.text,
              prefix: const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder<List<TokenRow>>(
              future: _tokensFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (snapshot.hasError) {
                  return const Center(
                    child: Text(
                      'Error loading tokens',
                      style: TextStyle(color: Colors.white),
                    ),
                  );
                }

                final tokens = snapshot.data ?? [];
                final filteredTokens = tokens
                    .where(
                      (token) => token.name
                          .toLowerCase()
                          .contains(_searchText.toLowerCase()),
                    )
                    .toList();

                return filteredTokens.isEmpty
                    ? Center(
                        child: Text(
                          context.l10n.noResultsFound,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      )
                    : ListView.separated(
                        controller: _scrollController,
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 20,
                          bottom: MediaQuery.paddingOf(context).bottom,
                        ),
                        itemCount: filteredTokens.length,
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 8),
                        itemBuilder: (BuildContext context, int index) {
                          final token = filteredTokens[index];
                          final selected = token.toModel() == _selectedToken;

                          return DecoratedBox(
                            decoration: selected
                                ? const ShapeDecoration(
                                    color:
                                        CpColors.blackTextFieldBackgroundColor,
                                    shape: StadiumBorder(),
                                  )
                                : const BoxDecoration(),
                            child: _TokenItem(
                              cryptoAmount: CryptoAmount(
                                value: 0,
                                cryptoCurrency:
                                    CryptoCurrency(token: token.toModel()),
                              ),
                              fiatAmount: const FiatAmount(
                                value: 0,
                                fiatCurrency: defaultFiatCurrency,
                              ),
                            ),
                          );
                        },
                      );
              },
            ),
          ),
        ],
      );
}

class _TokenItem extends StatelessWidget {
  const _TokenItem({
    required this.cryptoAmount,
    required this.fiatAmount,
  });

  final CryptoAmount cryptoAmount;
  final FiatAmount fiatAmount;

  static const double _iconSize = 36.0;
  static const double _minFiatAmount = 0.01;

  @override
  Widget build(BuildContext context) {
    String fiatAmountText;

    fiatAmountText = fiatAmount.value < _minFiatAmount
        ? r''
        : fiatAmount.format(context.locale, maxDecimals: 2);

    return _Card(
      child: ListTile(
        key: key,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
        dense: true,
        horizontalTitleGap: 4,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(_iconSize / 2),
          child: TokenIcon(token: cryptoAmount.token, size: _iconSize),
        ),
        onTap: () => Navigator.pop(context, cryptoAmount.token),
        title: Text(
          cryptoAmount.token.name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Text(
          fiatAmountText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(4),
        decoration: const ShapeDecoration(
          color: CpColors.blackGreyColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        child: child,
      );
}
