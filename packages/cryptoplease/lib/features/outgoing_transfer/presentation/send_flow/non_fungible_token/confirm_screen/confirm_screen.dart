import 'package:auto_route/auto_route.dart';
import 'package:cryptoplease/core/presentation/dialogs.dart';
import 'package:cryptoplease/features/outgoing_transfer/bl/create_outgoing_transfer_bloc/nft/bloc.dart';
import 'package:cryptoplease/features/outgoing_transfer/bl/outgoing_payment.dart';
import 'package:cryptoplease/features/outgoing_transfer/presentation/send_flow/non_fungible_token/confirm_screen/components/nft_create_link_content.dart';
import 'package:cryptoplease/features/outgoing_transfer/presentation/send_flow/non_fungible_token/confirm_screen/components/send_nft_to_solana_address_content.dart';
import 'package:cryptoplease/l10n/l10n.dart';
import 'package:cryptoplease_ui/cryptoplease_ui.dart';
import 'package:dfunc/dfunc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NftConfirmScreen extends StatefulWidget {
  const NftConfirmScreen({Key? key}) : super(key: key);

  @override
  State<NftConfirmScreen> createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<NftConfirmScreen> {
  void _onSubmitted() {
    context
        .read<NftCreateOutgoingTransferBloc>()
        .add(const NftCreateOutgoingTransferEvent.submitted());
  }

  @override
  Widget build(BuildContext context) => BlocConsumer<
          NftCreateOutgoingTransferBloc, NftCreateOutgoingTransferState>(
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
              content = NftCreateLinkContent(
                fee: state.fee,
                metadata: state.nft.metadata,
              );
              break;
            case OutgoingTransferType.direct:
              content = SendNftToSolanaAddressContent(
                fee: state.fee,
                address: state.recipientAddress ?? '',
                metadata: state.nft.metadata,
              );
              break;
          }

          return CpLoader(
            isLoading: state.flow.isProcessing(),
            child: Scaffold(
              appBar: CpAppBar(
                hasBorder: false,
                leading: BackButton(onPressed: () => context.router.pop()),
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
