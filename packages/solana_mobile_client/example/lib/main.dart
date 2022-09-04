import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solana_mobile_client_example/client.dart';

void main() {
  runApp(
    BlocProvider(
      create: (_) => ClientBloc(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Plugin example app'),
          ),
          body: BlocListener<ClientBloc, ClientState>(
            listener: (context, state) {
              print(state.capabilities);
            },
            listenWhen: (previous, current) =>
                previous.capabilities != current.capabilities,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<ClientBloc>().requestCapabilities();
                  },
                  child: const Text('Get capabilities'),
                )
              ],
            ),
          ),
        ),
      );
}
