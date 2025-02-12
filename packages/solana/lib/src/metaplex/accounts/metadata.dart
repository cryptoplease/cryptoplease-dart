import 'dart:convert';
import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:solana/base58.dart';
import 'package:solana/solana.dart';
import 'package:solana/src/metaplex/off_chain_metadata.dart';

class Metadata {
  const Metadata({
    required this.name,
    required this.symbol,
    required this.uri,
    required this.updateAuthority,
    required this.mint,
  });

  factory Metadata.fromBinary(List<int> sourceBytes) {
    final bytes = Int8List.fromList(sourceBytes);
    final reader = _StructReader(bytes.buffer)..skip(1);
    final updateAuthority = base58encode(reader.nextBytes(32));
    final mint = base58encode(reader.nextBytes(32));

    final name = reader.nextString();
    final symbol = reader.nextString();
    final uri = reader.nextString();

    return Metadata(
      name: name,
      symbol: symbol,
      uri: uri,
      updateAuthority: updateAuthority,
      mint: mint,
    );
  }

  Future<OffChainMetadata?> getExternalJson() async {
    final url = this.uri.trim();
    if (url.isEmpty) {
      return null;
    }
    final uri = Uri.tryParse(url);
    if (uri == null) {
      return null;
    }

    final response = await http.get(uri);
    if (response.statusCode != 200) {
      throw HttpException(response.statusCode, response.body);
    }

    return OffChainMetadata.fromJson(
      json.decode(response.body) as Map<String, dynamic>,
    );
  }

  final String name;
  final String symbol;
  final String uri;
  final String updateAuthority;
  final String mint;
}

class _StructReader {
  _StructReader(this._buffer) : _offset = 0;

  void skip(int length) => _offset += length;

  String nextString() {
    final length = _buffer.asByteData(_offset, 4).getInt32(0, Endian.little);
    final rawBytes = _buffer.asUint8List(_offset + 4, length);

    _offset += length + 4;
    // It is a zero terminated string a'la C
    final lastZero = rawBytes.indexOf(0);

    return lastZero == -1 ? '' : utf8.decode(rawBytes.sublist(0, lastZero));
  }

  Uint8List nextBytes(int length) {
    final bytes = _buffer.asUint8List(_offset, length);
    _offset += length;

    return bytes;
  }

  final ByteBuffer _buffer;
  int _offset;
}
