// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;
import 'dart:typed_data' as _i4;

import 'package:polkadart/polkadart.dart' as _i1;
import 'package:polkadart/scale_codec.dart' as _i2;

import '../types/nft/pallet/call.dart' as _i6;
import '../types/relai_network_runtime/runtime_call.dart' as _i5;

class Queries {
  const Queries(this.__api);

  final _i1.StateApi __api;

  final _i1.StorageValue<int> _something = const _i1.StorageValue<int>(
    prefix: 'NFT',
    storage: 'Something',
    valueCodec: _i2.U32Codec.codec,
  );

  _i3.Future<int?> something({_i1.BlockHash? at}) async {
    final hashedKey = _something.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _something.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  /// Returns the storage key for `something`.
  _i4.Uint8List somethingKey() {
    final hashedKey = _something.hashedKey();
    return hashedKey;
  }
}

class Txs {
  const Txs();

  /// See [`Pallet::create_class`].
  _i5.RuntimeCall createClass() {
    final _call = _i6.Call.createClass;
    return _i5.RuntimeCall.values.nft(_call);
  }
}
