// import 'package:cryptoplease/bl/currency.dart';
// import 'package:cryptoplease/bl/outgoing_transfers/create_outgoing_transfer_bloc/ft/bloc.dart';
// import 'package:cryptoplease/bl/outgoing_transfers/outgoing_payment.dart';
// import 'package:cryptoplease/bl/tokens/token.dart';
// import 'package:cryptoplease/l10n/device_locale.dart';
// import 'package:cryptoplease/l10n/l10n.dart';
// import 'package:cryptoplease/presentation/conversion_rates.dart';
// import 'package:cryptoplease/presentation/dialogs.dart';
// import 'package:cryptoplease/presentation/format_amount.dart';
// import 'package:cryptoplease/presentation/screens/authenticated/send_flow/fungible_token/confirm_screen/components/send_token_to_solana_address_content.dart';
// import 'package:cryptoplease/presentation/screens/authenticated/send_flow/fungible_token/confirm_screen/components/token_create_link_content.dart';
// import 'package:cryptoplease_ui/cryptoplease_ui.dart';
// import 'package:dfunc/dfunc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class ConfirmFungibleTokenScreen extends StatefulWidget {
//   const ConfirmFungibleTokenScreen({Key? key}) : super(key: key);

//   @override
//   _ConfirmScreenState createState() => _ConfirmScreenState();
// }

// class _ConfirmScreenState extends State<ConfirmFungibleTokenScreen> {
//   void _onSubmitted() {
//     context
//         .read<FtCreateOutgoingTransferBloc>()
//         .add(const FtCreateOutgoingTransferEvent.submitted());
//   }

//   @override
//   Widget build(BuildContext context) =>
//       BlocConsumer<FtCreateOutgoingTransferBloc, FtCreateOutgoingTransferState>(
//         listenWhen: (s1, s2) => s1.flow != s2.flow,
//         listener: (context, state) => state.flow.maybeMap(
//           failure: (s) => showErrorDialog(
//             context,
//             'Failed to send money',
//             s.error,
//           ),
//           orElse: ignore,
//         ),
//         builder: (context, state) {
//           final locale = DeviceLocale.localeOf(context);
//           final tokenAmount = state.tokenAmount.format(locale);
//           final fiatAmount = state.fiatAmount.format(locale);
//           final formattedFee = state.fee.format(locale);
//           final fiatFee = context.convertToFiat(
//             amount: state.fee.value,
//             token: Token.sol,
//             fiatCurrency: Currency.usd,
//           );
//           final formattedFiatFee = fiatFee?.format(locale);

//           final String nextButtonText;
//           switch (state.transferType) {
//             case OutgoingTransferType.splitKey:
//               nextButtonText = context.l10n.create;
//               break;
//             case OutgoingTransferType.direct:
//               nextButtonText = context.l10n.send;
//               break;
//           }

//           final Widget content;
//           switch (state.transferType) {
//             case OutgoingTransferType.splitKey:
//               content = TokenCreateLinkContent(
//                 amount: tokenAmount,
//                 fiatAmount: fiatAmount,
//                 fee: formattedFee,
//                 fiatFee: formattedFiatFee,
//               );
//               break;
//             case OutgoingTransferType.direct:
//               content = SendTokenToSolanaAddressContent(
//                 amount: tokenAmount,
//                 fiatAmount: fiatAmount,
//                 fee: formattedFee,
//                 fiatFee: formattedFiatFee,
//                 address: state.recipientAddress ?? '',
//               );
//               break;
//           }

//           return CpLoader(
//             isLoading: state.flow.isProcessing(),
//             child: Scaffold(
//               appBar: CpAppBar(
//                 hasBorder: false,
//                 nextButton: CpButton(
//                   onPressed: _onSubmitted,
//                   text: nextButtonText,
//                 ),
//               ),
//               body: CpContentPadding(child: content),
//             ),
//           );
//         },
//       );
// }

import 'package:cryptoplease/bl/outgoing_transfers/create_outgoing_transfer_bloc/ft/bloc.dart';
import 'package:cryptoplease/bl/outgoing_transfers/outgoing_payment.dart';
import 'package:cryptoplease/l10n/l10n.dart';
import 'package:cryptoplease/presentation/dialogs.dart';
import 'package:cryptoplease/presentation/screens/authenticated/send_flow/fungible_token/confirm_screen/components/send_token_to_solana_address_content.dart';
import 'package:cryptoplease/presentation/screens/authenticated/send_flow/fungible_token/confirm_screen/components/token_create_link_content.dart';
import 'package:cryptoplease_ui/cryptoplease_ui.dart';
import 'package:dfunc/dfunc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfirmFungibleTokenScreen extends StatefulWidget {
  const ConfirmFungibleTokenScreen({Key? key}) : super(key: key);

  @override
  _ConfirmScreenState createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<ConfirmFungibleTokenScreen> {
  void _onSubmitted() {
    context
        .read<FtCreateOutgoingTransferBloc>()
        .add(const FtCreateOutgoingTransferEvent.submitted());
  }

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<FtCreateOutgoingTransferBloc, FtCreateOutgoingTransferState>(
        listenWhen: (s1, s2) => s1.flow != s2.flow,
        listener: (context, state) => state.flow.maybeMap(
          failure: (s) => showErrorDialog(
            context,
            'Failed to send money',
            s.error,
          ),
          orElse: ignore,
        ),
        builder: (context, state) {
          final String nextButtonText;
          switch (state.transferType) {
            case OutgoingTransferType.splitKey:
              nextButtonText = context.l10n.create;
              break;
            case OutgoingTransferType.direct:
              nextButtonText = context.l10n.send;
              break;
          }

          final Widget content;
          switch (state.transferType) {
            case OutgoingTransferType.splitKey:
              content = TokenCreateLinkContent(
                amount: state.tokenAmount,
                fee: state.fee,
              );
              break;
            case OutgoingTransferType.direct:
              content = SendTokenToSolanaAddressContent(
                amount: state.tokenAmount,
                fee: state.fee,
                address: state.recipientAddress ?? '',
              );
              break;
          }

          return CpLoader(
            isLoading: state.flow.isProcessing(),
            child: Scaffold(
              appBar: CpAppBar(
                hasBorder: false,
                nextButton: CpButton(
                  onPressed: _onSubmitted,
                  text: nextButtonText,
                ),
              ),
              body: CpContentPadding(child: content),
            ),
          );
        },
      );
}
