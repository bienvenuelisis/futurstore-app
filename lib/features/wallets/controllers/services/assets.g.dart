// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assets.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$buyAssetHash() => r'96c671ae6553eb116ac75f97778be677f6321e5f';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [buyAsset].
@ProviderFor(buyAsset)
const buyAssetProvider = BuyAssetFamily();

/// See also [buyAsset].
class BuyAssetFamily extends Family<AsyncValue<void>> {
  /// See also [buyAsset].
  const BuyAssetFamily();

  /// See also [buyAsset].
  BuyAssetProvider call({
    required int assetId,
    required String assetType,
    Future<void> Function(String?, bool)? onSuccess,
  }) {
    return BuyAssetProvider(
      assetId: assetId,
      assetType: assetType,
      onSuccess: onSuccess,
    );
  }

  @override
  BuyAssetProvider getProviderOverride(
    covariant BuyAssetProvider provider,
  ) {
    return call(
      assetId: provider.assetId,
      assetType: provider.assetType,
      onSuccess: provider.onSuccess,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'buyAssetProvider';
}

/// See also [buyAsset].
class BuyAssetProvider extends AutoDisposeFutureProvider<void> {
  /// See also [buyAsset].
  BuyAssetProvider({
    required int assetId,
    required String assetType,
    Future<void> Function(String?, bool)? onSuccess,
  }) : this._internal(
          (ref) => buyAsset(
            ref as BuyAssetRef,
            assetId: assetId,
            assetType: assetType,
            onSuccess: onSuccess,
          ),
          from: buyAssetProvider,
          name: r'buyAssetProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$buyAssetHash,
          dependencies: BuyAssetFamily._dependencies,
          allTransitiveDependencies: BuyAssetFamily._allTransitiveDependencies,
          assetId: assetId,
          assetType: assetType,
          onSuccess: onSuccess,
        );

  BuyAssetProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.assetId,
    required this.assetType,
    required this.onSuccess,
  }) : super.internal();

  final int assetId;
  final String assetType;
  final Future<void> Function(String?, bool)? onSuccess;

  @override
  Override overrideWith(
    FutureOr<void> Function(BuyAssetRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BuyAssetProvider._internal(
        (ref) => create(ref as BuyAssetRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        assetId: assetId,
        assetType: assetType,
        onSuccess: onSuccess,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _BuyAssetProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BuyAssetProvider &&
        other.assetId == assetId &&
        other.assetType == assetType &&
        other.onSuccess == onSuccess;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, assetId.hashCode);
    hash = _SystemHash.combine(hash, assetType.hashCode);
    hash = _SystemHash.combine(hash, onSuccess.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BuyAssetRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `assetId` of this provider.
  int get assetId;

  /// The parameter `assetType` of this provider.
  String get assetType;

  /// The parameter `onSuccess` of this provider.
  Future<void> Function(String?, bool)? get onSuccess;
}

class _BuyAssetProviderElement extends AutoDisposeFutureProviderElement<void>
    with BuyAssetRef {
  _BuyAssetProviderElement(super.provider);

  @override
  int get assetId => (origin as BuyAssetProvider).assetId;
  @override
  String get assetType => (origin as BuyAssetProvider).assetType;
  @override
  Future<void> Function(String?, bool)? get onSuccess =>
      (origin as BuyAssetProvider).onSuccess;
}

String _$verifyAssetPurchaseHash() =>
    r'7dbd60867e9107046dbd9a1a75c283f939dd6557';

/// See also [verifyAssetPurchase].
@ProviderFor(verifyAssetPurchase)
const verifyAssetPurchaseProvider = VerifyAssetPurchaseFamily();

/// See also [verifyAssetPurchase].
class VerifyAssetPurchaseFamily extends Family<AsyncValue<bool>> {
  /// See also [verifyAssetPurchase].
  const VerifyAssetPurchaseFamily();

  /// See also [verifyAssetPurchase].
  VerifyAssetPurchaseProvider call({
    required int assetId,
    required String address,
  }) {
    return VerifyAssetPurchaseProvider(
      assetId: assetId,
      address: address,
    );
  }

  @override
  VerifyAssetPurchaseProvider getProviderOverride(
    covariant VerifyAssetPurchaseProvider provider,
  ) {
    return call(
      assetId: provider.assetId,
      address: provider.address,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'verifyAssetPurchaseProvider';
}

/// See also [verifyAssetPurchase].
class VerifyAssetPurchaseProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [verifyAssetPurchase].
  VerifyAssetPurchaseProvider({
    required int assetId,
    required String address,
  }) : this._internal(
          (ref) => verifyAssetPurchase(
            ref as VerifyAssetPurchaseRef,
            assetId: assetId,
            address: address,
          ),
          from: verifyAssetPurchaseProvider,
          name: r'verifyAssetPurchaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$verifyAssetPurchaseHash,
          dependencies: VerifyAssetPurchaseFamily._dependencies,
          allTransitiveDependencies:
              VerifyAssetPurchaseFamily._allTransitiveDependencies,
          assetId: assetId,
          address: address,
        );

  VerifyAssetPurchaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.assetId,
    required this.address,
  }) : super.internal();

  final int assetId;
  final String address;

  @override
  Override overrideWith(
    FutureOr<bool> Function(VerifyAssetPurchaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: VerifyAssetPurchaseProvider._internal(
        (ref) => create(ref as VerifyAssetPurchaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        assetId: assetId,
        address: address,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _VerifyAssetPurchaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is VerifyAssetPurchaseProvider &&
        other.assetId == assetId &&
        other.address == address;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, assetId.hashCode);
    hash = _SystemHash.combine(hash, address.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin VerifyAssetPurchaseRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `assetId` of this provider.
  int get assetId;

  /// The parameter `address` of this provider.
  String get address;
}

class _VerifyAssetPurchaseProviderElement
    extends AutoDisposeFutureProviderElement<bool> with VerifyAssetPurchaseRef {
  _VerifyAssetPurchaseProviderElement(super.provider);

  @override
  int get assetId => (origin as VerifyAssetPurchaseProvider).assetId;
  @override
  String get address => (origin as VerifyAssetPurchaseProvider).address;
}

String _$hasThisAssetHash() => r'c276c1e73f2f01344354345a660ebf5331affb0f';

/// See also [hasThisAsset].
@ProviderFor(hasThisAsset)
const hasThisAssetProvider = HasThisAssetFamily();

/// See also [hasThisAsset].
class HasThisAssetFamily extends Family<AsyncValue<bool>> {
  /// See also [hasThisAsset].
  const HasThisAssetFamily();

  /// See also [hasThisAsset].
  HasThisAssetProvider call({
    required int assetId,
  }) {
    return HasThisAssetProvider(
      assetId: assetId,
    );
  }

  @override
  HasThisAssetProvider getProviderOverride(
    covariant HasThisAssetProvider provider,
  ) {
    return call(
      assetId: provider.assetId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'hasThisAssetProvider';
}

/// See also [hasThisAsset].
class HasThisAssetProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [hasThisAsset].
  HasThisAssetProvider({
    required int assetId,
  }) : this._internal(
          (ref) => hasThisAsset(
            ref as HasThisAssetRef,
            assetId: assetId,
          ),
          from: hasThisAssetProvider,
          name: r'hasThisAssetProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$hasThisAssetHash,
          dependencies: HasThisAssetFamily._dependencies,
          allTransitiveDependencies:
              HasThisAssetFamily._allTransitiveDependencies,
          assetId: assetId,
        );

  HasThisAssetProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.assetId,
  }) : super.internal();

  final int assetId;

  @override
  Override overrideWith(
    FutureOr<bool> Function(HasThisAssetRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: HasThisAssetProvider._internal(
        (ref) => create(ref as HasThisAssetRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        assetId: assetId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _HasThisAssetProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HasThisAssetProvider && other.assetId == assetId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, assetId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HasThisAssetRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `assetId` of this provider.
  int get assetId;
}

class _HasThisAssetProviderElement
    extends AutoDisposeFutureProviderElement<bool> with HasThisAssetRef {
  _HasThisAssetProviderElement(super.provider);

  @override
  int get assetId => (origin as HasThisAssetProvider).assetId;
}

String _$addReviewHashHash() => r'2e776c8c820d291928003b1a2284b1d19bfc0a0f';

/// See also [addReviewHash].
@ProviderFor(addReviewHash)
const addReviewHashProvider = AddReviewHashFamily();

/// See also [addReviewHash].
class AddReviewHashFamily extends Family<AsyncValue<String?>> {
  /// See also [addReviewHash].
  const AddReviewHashFamily();

  /// See also [addReviewHash].
  AddReviewHashProvider call({
    required int assetId,
    required String note,
    String? content,
  }) {
    return AddReviewHashProvider(
      assetId: assetId,
      note: note,
      content: content,
    );
  }

  @override
  AddReviewHashProvider getProviderOverride(
    covariant AddReviewHashProvider provider,
  ) {
    return call(
      assetId: provider.assetId,
      note: provider.note,
      content: provider.content,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'addReviewHashProvider';
}

/// See also [addReviewHash].
class AddReviewHashProvider extends AutoDisposeFutureProvider<String?> {
  /// See also [addReviewHash].
  AddReviewHashProvider({
    required int assetId,
    required String note,
    String? content,
  }) : this._internal(
          (ref) => addReviewHash(
            ref as AddReviewHashRef,
            assetId: assetId,
            note: note,
            content: content,
          ),
          from: addReviewHashProvider,
          name: r'addReviewHashProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addReviewHashHash,
          dependencies: AddReviewHashFamily._dependencies,
          allTransitiveDependencies:
              AddReviewHashFamily._allTransitiveDependencies,
          assetId: assetId,
          note: note,
          content: content,
        );

  AddReviewHashProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.assetId,
    required this.note,
    required this.content,
  }) : super.internal();

  final int assetId;
  final String note;
  final String? content;

  @override
  Override overrideWith(
    FutureOr<String?> Function(AddReviewHashRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddReviewHashProvider._internal(
        (ref) => create(ref as AddReviewHashRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        assetId: assetId,
        note: note,
        content: content,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String?> createElement() {
    return _AddReviewHashProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddReviewHashProvider &&
        other.assetId == assetId &&
        other.note == note &&
        other.content == content;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, assetId.hashCode);
    hash = _SystemHash.combine(hash, note.hashCode);
    hash = _SystemHash.combine(hash, content.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AddReviewHashRef on AutoDisposeFutureProviderRef<String?> {
  /// The parameter `assetId` of this provider.
  int get assetId;

  /// The parameter `note` of this provider.
  String get note;

  /// The parameter `content` of this provider.
  String? get content;
}

class _AddReviewHashProviderElement
    extends AutoDisposeFutureProviderElement<String?> with AddReviewHashRef {
  _AddReviewHashProviderElement(super.provider);

  @override
  int get assetId => (origin as AddReviewHashProvider).assetId;
  @override
  String get note => (origin as AddReviewHashProvider).note;
  @override
  String? get content => (origin as AddReviewHashProvider).content;
}

String _$myAppsGamesHash() => r'd607cae279c3ea049c8038dd85e86cee1a40b2cc';

/// See also [myAppsGames].
@ProviderFor(myAppsGames)
final myAppsGamesProvider =
    AutoDisposeFutureProvider<List<ApplicationModel>>.internal(
  myAppsGames,
  name: r'myAppsGamesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$myAppsGamesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MyAppsGamesRef = AutoDisposeFutureProviderRef<List<ApplicationModel>>;
String _$myBooksHash() => r'b95f89ea029e68501948c5a4c49704a4704c4967';

/// See also [myBooks].
@ProviderFor(myBooks)
final myBooksProvider = AutoDisposeFutureProvider<List<BookModel>>.internal(
  myBooks,
  name: r'myBooksProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$myBooksHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MyBooksRef = AutoDisposeFutureProviderRef<List<BookModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
