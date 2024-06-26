// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

import '../../relai_primitives/assetsreg/asset.dart' as _i3;

/// Contains a variant per dispatchable extrinsic that this pallet has.
abstract class Call {
  const Call();

  factory Call.decode(_i1.Input input) {
    return codec.decode(input);
  }

  static const $CallCodec codec = $CallCodec();

  static const $Call values = $Call();

  _i2.Uint8List encode() {
    final output = _i1.ByteOutput(codec.sizeHint(this));
    codec.encodeTo(this, output);
    return output.toBytes();
  }

  int sizeHint() {
    return codec.sizeHint(this);
  }

  Map<String, Map<String, dynamic>> toJson();
}

class $Call {
  const $Call();

  SubmitAsset submitAsset({required _i3.Asset asset}) {
    return SubmitAsset(asset: asset);
  }

  PubUnpubAsset pubUnpubAsset({
    required int assetId,
    required bool pubUnpub,
  }) {
    return PubUnpubAsset(
      assetId: assetId,
      pubUnpub: pubUnpub,
    );
  }

  DeleteAsset deleteAsset({required int assetId}) {
    return DeleteAsset(assetId: assetId);
  }

  BuyAsset buyAsset({required int assetId}) {
    return BuyAsset(assetId: assetId);
  }

  UpdateAsset updateAsset({
    required int assetId,
    required _i3.Asset asset,
  }) {
    return UpdateAsset(
      assetId: assetId,
      asset: asset,
    );
  }
}

class $CallCodec with _i1.Codec<Call> {
  const $CallCodec();

  @override
  Call decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return SubmitAsset._decode(input);
      case 2:
        return PubUnpubAsset._decode(input);
      case 3:
        return DeleteAsset._decode(input);
      case 4:
        return BuyAsset._decode(input);
      case 5:
        return UpdateAsset._decode(input);
      default:
        throw Exception('Call: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    Call value,
    _i1.Output output,
  ) {
    switch (value.runtimeType) {
      case SubmitAsset:
        (value as SubmitAsset).encodeTo(output);
        break;
      case PubUnpubAsset:
        (value as PubUnpubAsset).encodeTo(output);
        break;
      case DeleteAsset:
        (value as DeleteAsset).encodeTo(output);
        break;
      case BuyAsset:
        (value as BuyAsset).encodeTo(output);
        break;
      case UpdateAsset:
        (value as UpdateAsset).encodeTo(output);
        break;
      default:
        throw Exception(
            'Call: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(Call value) {
    switch (value.runtimeType) {
      case SubmitAsset:
        return (value as SubmitAsset)._sizeHint();
      case PubUnpubAsset:
        return (value as PubUnpubAsset)._sizeHint();
      case DeleteAsset:
        return (value as DeleteAsset)._sizeHint();
      case BuyAsset:
        return (value as BuyAsset)._sizeHint();
      case UpdateAsset:
        return (value as UpdateAsset)._sizeHint();
      default:
        throw Exception(
            'Call: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

/// See [`Pallet::submit_asset`].
class SubmitAsset extends Call {
  const SubmitAsset({required this.asset});

  factory SubmitAsset._decode(_i1.Input input) {
    return SubmitAsset(asset: _i3.Asset.codec.decode(input));
  }

  /// Asset<T::AccountId, BalanceOf<T>>
  final _i3.Asset asset;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() => {
        'submit_asset': {'asset': asset.toJson()}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i3.Asset.codec.sizeHint(asset);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
    _i3.Asset.codec.encodeTo(
      asset,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is SubmitAsset && other.asset == asset;

  @override
  int get hashCode => asset.hashCode;
}

/// See [`Pallet::pub_unpub_asset`].
class PubUnpubAsset extends Call {
  const PubUnpubAsset({
    required this.assetId,
    required this.pubUnpub,
  });

  factory PubUnpubAsset._decode(_i1.Input input) {
    return PubUnpubAsset(
      assetId: _i1.U32Codec.codec.decode(input),
      pubUnpub: _i1.BoolCodec.codec.decode(input),
    );
  }

  /// AssetId
  final int assetId;

  /// bool
  final bool pubUnpub;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'pub_unpub_asset': {
          'assetId': assetId,
          'pubUnpub': pubUnpub,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(assetId);
    size = size + _i1.BoolCodec.codec.sizeHint(pubUnpub);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      2,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      assetId,
      output,
    );
    _i1.BoolCodec.codec.encodeTo(
      pubUnpub,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is PubUnpubAsset &&
          other.assetId == assetId &&
          other.pubUnpub == pubUnpub;

  @override
  int get hashCode => Object.hash(
        assetId,
        pubUnpub,
      );
}

/// See [`Pallet::delete_asset`].
class DeleteAsset extends Call {
  const DeleteAsset({required this.assetId});

  factory DeleteAsset._decode(_i1.Input input) {
    return DeleteAsset(assetId: _i1.U32Codec.codec.decode(input));
  }

  /// AssetId
  final int assetId;

  @override
  Map<String, Map<String, int>> toJson() => {
        'delete_asset': {'assetId': assetId}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(assetId);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      3,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      assetId,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is DeleteAsset && other.assetId == assetId;

  @override
  int get hashCode => assetId.hashCode;
}

/// See [`Pallet::buy_asset`].
class BuyAsset extends Call {
  const BuyAsset({required this.assetId});

  factory BuyAsset._decode(_i1.Input input) {
    return BuyAsset(assetId: _i1.U32Codec.codec.decode(input));
  }

  /// AssetId
  final int assetId;

  @override
  Map<String, Map<String, int>> toJson() => {
        'buy_asset': {'assetId': assetId}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(assetId);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      4,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      assetId,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is BuyAsset && other.assetId == assetId;

  @override
  int get hashCode => assetId.hashCode;
}

/// See [`Pallet::update_asset`].
class UpdateAsset extends Call {
  const UpdateAsset({
    required this.assetId,
    required this.asset,
  });

  factory UpdateAsset._decode(_i1.Input input) {
    return UpdateAsset(
      assetId: _i1.U32Codec.codec.decode(input),
      asset: _i3.Asset.codec.decode(input),
    );
  }

  /// AssetId
  final int assetId;

  /// Asset<T::AccountId, BalanceOf<T>>
  final _i3.Asset asset;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'update_asset': {
          'assetId': assetId,
          'asset': asset.toJson(),
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(assetId);
    size = size + _i3.Asset.codec.sizeHint(asset);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      5,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      assetId,
      output,
    );
    _i3.Asset.codec.encodeTo(
      asset,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is UpdateAsset && other.assetId == assetId && other.asset == asset;

  @override
  int get hashCode => Object.hash(
        assetId,
        asset,
      );
}
