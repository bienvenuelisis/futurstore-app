// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters, duplicate_ignore
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_internal_member

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class UserModelCollectionReference
    implements
        UserModelQuery,
        FirestoreCollectionReference<UserModel, UserModelQuerySnapshot> {
  factory UserModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$UserModelCollectionReference;

  static UserModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$UserModelFromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    UserModel value,
    SetOptions? options,
  ) {
    return {..._$UserModelToJson(value)}..remove('id');
  }

  @override
  CollectionReference<UserModel> get reference;

  @override
  UserModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<UserModelDocumentReference> add(UserModel value);
}

class _$UserModelCollectionReference extends _$UserModelQuery
    implements UserModelCollectionReference {
  factory _$UserModelCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$UserModelCollectionReference._(
      firestore.collection('users').withConverter(
            fromFirestore: UserModelCollectionReference.fromFirestore,
            toFirestore: UserModelCollectionReference.toFirestore,
          ),
    );
  }

  _$UserModelCollectionReference._(
    CollectionReference<UserModel> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<UserModel> get reference =>
      super.reference as CollectionReference<UserModel>;

  @override
  UserModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return UserModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<UserModelDocumentReference> add(UserModel value) {
    return reference.add(value).then((ref) => UserModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class UserModelDocumentReference
    extends FirestoreDocumentReference<UserModel, UserModelDocumentSnapshot> {
  factory UserModelDocumentReference(DocumentReference<UserModel> reference) =
      _$UserModelDocumentReference;

  DocumentReference<UserModel> get reference;

  /// A reference to the [UserModelCollectionReference] containing this document.
  UserModelCollectionReference get parent {
    return _$UserModelCollectionReference(reference.firestore);
  }

  late final Web3WalletAccountCollectionReference wallets =
      _$Web3WalletAccountCollectionReference(
    reference,
  );

  late final UserAssetCollectionReference assets =
      _$UserAssetCollectionReference(
    reference,
  );

  @override
  Stream<UserModelDocumentSnapshot> snapshots();

  @override
  Future<UserModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String uuid,
    FieldValue uuidFieldValue,
    DateTime? createdAt,
    FieldValue createdAtFieldValue,
    String? deviceId,
    FieldValue deviceIdFieldValue,
    List<String> addresses,
    FieldValue addressesFieldValue,
    DateTime? lastConnection,
    FieldValue lastConnectionFieldValue,
    String role,
    FieldValue roleFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String uuid,
    FieldValue uuidFieldValue,
    DateTime? createdAt,
    FieldValue createdAtFieldValue,
    String? deviceId,
    FieldValue deviceIdFieldValue,
    List<String> addresses,
    FieldValue addressesFieldValue,
    DateTime? lastConnection,
    FieldValue lastConnectionFieldValue,
    String role,
    FieldValue roleFieldValue,
  });
}

class _$UserModelDocumentReference
    extends FirestoreDocumentReference<UserModel, UserModelDocumentSnapshot>
    implements UserModelDocumentReference {
  _$UserModelDocumentReference(this.reference);

  @override
  final DocumentReference<UserModel> reference;

  /// A reference to the [UserModelCollectionReference] containing this document.
  UserModelCollectionReference get parent {
    return _$UserModelCollectionReference(reference.firestore);
  }

  late final Web3WalletAccountCollectionReference wallets =
      _$Web3WalletAccountCollectionReference(
    reference,
  );

  late final UserAssetCollectionReference assets =
      _$UserAssetCollectionReference(
    reference,
  );

  @override
  Stream<UserModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map(UserModelDocumentSnapshot._);
  }

  @override
  Future<UserModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UserModelDocumentSnapshot._);
  }

  @override
  Future<UserModelDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(UserModelDocumentSnapshot._);
  }

  Future<void> update({
    Object? uuid = _sentinel,
    FieldValue? uuidFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? deviceId = _sentinel,
    FieldValue? deviceIdFieldValue,
    Object? addresses = _sentinel,
    FieldValue? addressesFieldValue,
    Object? lastConnection = _sentinel,
    FieldValue? lastConnectionFieldValue,
    Object? role = _sentinel,
    FieldValue? roleFieldValue,
  }) async {
    assert(
      uuid == _sentinel || uuidFieldValue == null,
      "Cannot specify both uuid and uuidFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      deviceId == _sentinel || deviceIdFieldValue == null,
      "Cannot specify both deviceId and deviceIdFieldValue",
    );
    assert(
      addresses == _sentinel || addressesFieldValue == null,
      "Cannot specify both addresses and addressesFieldValue",
    );
    assert(
      lastConnection == _sentinel || lastConnectionFieldValue == null,
      "Cannot specify both lastConnection and lastConnectionFieldValue",
    );
    assert(
      role == _sentinel || roleFieldValue == null,
      "Cannot specify both role and roleFieldValue",
    );
    final json = {
      if (uuid != _sentinel)
        _$UserModelFieldMap['uuid']!:
            _$UserModelPerFieldToJson.uuid(uuid as String),
      if (uuidFieldValue != null) _$UserModelFieldMap['uuid']!: uuidFieldValue,
      if (createdAt != _sentinel)
        _$UserModelFieldMap['createdAt']!:
            _$UserModelPerFieldToJson.createdAt(createdAt as DateTime?),
      if (createdAtFieldValue != null)
        _$UserModelFieldMap['createdAt']!: createdAtFieldValue,
      if (deviceId != _sentinel)
        _$UserModelFieldMap['deviceId']!:
            _$UserModelPerFieldToJson.deviceId(deviceId as String?),
      if (deviceIdFieldValue != null)
        _$UserModelFieldMap['deviceId']!: deviceIdFieldValue,
      if (addresses != _sentinel)
        _$UserModelFieldMap['addresses']!:
            _$UserModelPerFieldToJson.addresses(addresses as List<String>),
      if (addressesFieldValue != null)
        _$UserModelFieldMap['addresses']!: addressesFieldValue,
      if (lastConnection != _sentinel)
        _$UserModelFieldMap['lastConnection']!: _$UserModelPerFieldToJson
            .lastConnection(lastConnection as DateTime?),
      if (lastConnectionFieldValue != null)
        _$UserModelFieldMap['lastConnection']!: lastConnectionFieldValue,
      if (role != _sentinel)
        _$UserModelFieldMap['role']!:
            _$UserModelPerFieldToJson.role(role as String),
      if (roleFieldValue != null) _$UserModelFieldMap['role']!: roleFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? uuid = _sentinel,
    FieldValue? uuidFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? deviceId = _sentinel,
    FieldValue? deviceIdFieldValue,
    Object? addresses = _sentinel,
    FieldValue? addressesFieldValue,
    Object? lastConnection = _sentinel,
    FieldValue? lastConnectionFieldValue,
    Object? role = _sentinel,
    FieldValue? roleFieldValue,
  }) {
    assert(
      uuid == _sentinel || uuidFieldValue == null,
      "Cannot specify both uuid and uuidFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      deviceId == _sentinel || deviceIdFieldValue == null,
      "Cannot specify both deviceId and deviceIdFieldValue",
    );
    assert(
      addresses == _sentinel || addressesFieldValue == null,
      "Cannot specify both addresses and addressesFieldValue",
    );
    assert(
      lastConnection == _sentinel || lastConnectionFieldValue == null,
      "Cannot specify both lastConnection and lastConnectionFieldValue",
    );
    assert(
      role == _sentinel || roleFieldValue == null,
      "Cannot specify both role and roleFieldValue",
    );
    final json = {
      if (uuid != _sentinel)
        _$UserModelFieldMap['uuid']!:
            _$UserModelPerFieldToJson.uuid(uuid as String),
      if (uuidFieldValue != null) _$UserModelFieldMap['uuid']!: uuidFieldValue,
      if (createdAt != _sentinel)
        _$UserModelFieldMap['createdAt']!:
            _$UserModelPerFieldToJson.createdAt(createdAt as DateTime?),
      if (createdAtFieldValue != null)
        _$UserModelFieldMap['createdAt']!: createdAtFieldValue,
      if (deviceId != _sentinel)
        _$UserModelFieldMap['deviceId']!:
            _$UserModelPerFieldToJson.deviceId(deviceId as String?),
      if (deviceIdFieldValue != null)
        _$UserModelFieldMap['deviceId']!: deviceIdFieldValue,
      if (addresses != _sentinel)
        _$UserModelFieldMap['addresses']!:
            _$UserModelPerFieldToJson.addresses(addresses as List<String>),
      if (addressesFieldValue != null)
        _$UserModelFieldMap['addresses']!: addressesFieldValue,
      if (lastConnection != _sentinel)
        _$UserModelFieldMap['lastConnection']!: _$UserModelPerFieldToJson
            .lastConnection(lastConnection as DateTime?),
      if (lastConnectionFieldValue != null)
        _$UserModelFieldMap['lastConnection']!: lastConnectionFieldValue,
      if (role != _sentinel)
        _$UserModelFieldMap['role']!:
            _$UserModelPerFieldToJson.role(role as String),
      if (roleFieldValue != null) _$UserModelFieldMap['role']!: roleFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is UserModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class UserModelQuery
    implements QueryReference<UserModel, UserModelQuerySnapshot> {
  @override
  UserModelQuery limit(int limit);

  @override
  UserModelQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  UserModelQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  UserModelQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UserModelQuery whereUuid({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UserModelQuery whereCreatedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
    bool? isNull,
  });

  UserModelQuery whereDeviceId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  UserModelQuery whereAddresses({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    String? arrayContains,
    List<String>? arrayContainsAny,
    bool? isNull,
  });

  UserModelQuery whereLastConnection({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
    bool? isNull,
  });

  UserModelQuery whereRole({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  UserModelQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
  });

  UserModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
  });

  UserModelQuery orderByUuid({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
  });

  UserModelQuery orderByCreatedAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
  });

  UserModelQuery orderByDeviceId({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
  });

  UserModelQuery orderByAddresses({
    bool descending = false,
    List<String> startAt,
    List<String> startAfter,
    List<String> endAt,
    List<String> endBefore,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
  });

  UserModelQuery orderByLastConnection({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
  });

  UserModelQuery orderByRole({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
  });
}

class _$UserModelQuery extends QueryReference<UserModel, UserModelQuerySnapshot>
    implements UserModelQuery {
  _$UserModelQuery(
    this._collection, {
    required Query<UserModel> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<UserModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(UserModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<UserModelQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(UserModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  UserModelQuery limit(int limit) {
    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserModelQuery limitToLast(int limit) {
    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserModelQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserModelQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserModelQuery whereUuid({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserModelFieldMap['uuid']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserModelPerFieldToJson.uuid(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserModelPerFieldToJson.uuid(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserModelPerFieldToJson.uuid(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserModelPerFieldToJson.uuid(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserModelPerFieldToJson.uuid(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserModelPerFieldToJson.uuid(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$UserModelPerFieldToJson.uuid(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserModelPerFieldToJson.uuid(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserModelQuery whereCreatedAt({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserModelFieldMap['createdAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserModelPerFieldToJson.createdAt(isEqualTo as DateTime?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserModelPerFieldToJson.createdAt(isNotEqualTo as DateTime?)
            : null,
        isLessThan: isLessThan != null
            ? _$UserModelPerFieldToJson.createdAt(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserModelPerFieldToJson
                .createdAt(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserModelPerFieldToJson.createdAt(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserModelPerFieldToJson
                .createdAt(isGreaterThanOrEqualTo as DateTime?)
            : null,
        whereIn: whereIn?.map((e) => _$UserModelPerFieldToJson.createdAt(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$UserModelPerFieldToJson.createdAt(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserModelQuery whereDeviceId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserModelFieldMap['deviceId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserModelPerFieldToJson.deviceId(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserModelPerFieldToJson.deviceId(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$UserModelPerFieldToJson.deviceId(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserModelPerFieldToJson.deviceId(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserModelPerFieldToJson.deviceId(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserModelPerFieldToJson
                .deviceId(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map((e) => _$UserModelPerFieldToJson.deviceId(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$UserModelPerFieldToJson.deviceId(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserModelQuery whereAddresses({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains = _sentinel,
    List<String>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserModelFieldMap['addresses']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserModelPerFieldToJson.addresses(isEqualTo as List<String>)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserModelPerFieldToJson.addresses(isNotEqualTo as List<String>)
            : null,
        isLessThan: isLessThan != null
            ? _$UserModelPerFieldToJson.addresses(isLessThan as List<String>)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserModelPerFieldToJson
                .addresses(isLessThanOrEqualTo as List<String>)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserModelPerFieldToJson.addresses(isGreaterThan as List<String>)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserModelPerFieldToJson
                .addresses(isGreaterThanOrEqualTo as List<String>)
            : null,
        arrayContains: arrayContains != null
            ? (_$UserModelPerFieldToJson.addresses([arrayContains as String])
                    as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$UserModelPerFieldToJson.addresses(arrayContainsAny)
                as Iterable<Object>?
            : null,
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserModelQuery whereLastConnection({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserModelFieldMap['lastConnection']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserModelPerFieldToJson.lastConnection(isEqualTo as DateTime?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserModelPerFieldToJson
                .lastConnection(isNotEqualTo as DateTime?)
            : null,
        isLessThan: isLessThan != null
            ? _$UserModelPerFieldToJson.lastConnection(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserModelPerFieldToJson
                .lastConnection(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserModelPerFieldToJson
                .lastConnection(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserModelPerFieldToJson
                .lastConnection(isGreaterThanOrEqualTo as DateTime?)
            : null,
        whereIn:
            whereIn?.map((e) => _$UserModelPerFieldToJson.lastConnection(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$UserModelPerFieldToJson.lastConnection(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserModelQuery whereRole({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserModelFieldMap['role']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserModelPerFieldToJson.role(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserModelPerFieldToJson.role(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserModelPerFieldToJson.role(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserModelPerFieldToJson.role(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserModelPerFieldToJson.role(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserModelPerFieldToJson.role(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$UserModelPerFieldToJson.role(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserModelPerFieldToJson.role(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserModelQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserModelQuery orderByUuid({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserModelFieldMap['uuid']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserModelQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$UserModelFieldMap['createdAt']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserModelQuery orderByDeviceId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$UserModelFieldMap['deviceId']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserModelQuery orderByAddresses({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$UserModelFieldMap['addresses']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserModelQuery orderByLastConnection({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$UserModelFieldMap['lastConnection']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserModelQuery orderByRole({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserModelFieldMap['role']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class UserModelDocumentSnapshot extends FirestoreDocumentSnapshot<UserModel> {
  UserModelDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<UserModel> snapshot;

  @override
  UserModelDocumentReference get reference {
    return UserModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final UserModel? data;
}

class UserModelQuerySnapshot
    extends FirestoreQuerySnapshot<UserModel, UserModelQueryDocumentSnapshot> {
  UserModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory UserModelQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<UserModel> snapshot,
  ) {
    final docs = snapshot.docs.map(UserModelQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        UserModelDocumentSnapshot._,
      );
    }).toList();

    return UserModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<UserModelDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    UserModelDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<UserModelDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<UserModel> snapshot;

  @override
  final List<UserModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<UserModelDocumentSnapshot>> docChanges;
}

class UserModelQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<UserModel>
    implements UserModelDocumentSnapshot {
  UserModelQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<UserModel> snapshot;

  @override
  final UserModel data;

  @override
  UserModelDocumentReference get reference {
    return UserModelDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class Web3WalletAccountCollectionReference
    implements
        Web3WalletAccountQuery,
        FirestoreCollectionReference<Web3WalletAccount,
            Web3WalletAccountQuerySnapshot> {
  factory Web3WalletAccountCollectionReference(
    DocumentReference<UserModel> parent,
  ) = _$Web3WalletAccountCollectionReference;

  static Web3WalletAccount fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$Web3WalletAccountFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Web3WalletAccount value,
    SetOptions? options,
  ) {
    return _$Web3WalletAccountToJson(value);
  }

  @override
  CollectionReference<Web3WalletAccount> get reference;

  /// A reference to the containing [UserModelDocumentReference] if this is a subcollection.
  UserModelDocumentReference get parent;

  @override
  Web3WalletAccountDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<Web3WalletAccountDocumentReference> add(Web3WalletAccount value);
}

class _$Web3WalletAccountCollectionReference extends _$Web3WalletAccountQuery
    implements Web3WalletAccountCollectionReference {
  factory _$Web3WalletAccountCollectionReference(
    DocumentReference<UserModel> parent,
  ) {
    return _$Web3WalletAccountCollectionReference._(
      UserModelDocumentReference(parent),
      parent.collection('wallets').withConverter(
            fromFirestore: Web3WalletAccountCollectionReference.fromFirestore,
            toFirestore: Web3WalletAccountCollectionReference.toFirestore,
          ),
    );
  }

  _$Web3WalletAccountCollectionReference._(
    this.parent,
    CollectionReference<Web3WalletAccount> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final UserModelDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<Web3WalletAccount> get reference =>
      super.reference as CollectionReference<Web3WalletAccount>;

  @override
  Web3WalletAccountDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return Web3WalletAccountDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<Web3WalletAccountDocumentReference> add(Web3WalletAccount value) {
    return reference
        .add(value)
        .then((ref) => Web3WalletAccountDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$Web3WalletAccountCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class Web3WalletAccountDocumentReference
    extends FirestoreDocumentReference<Web3WalletAccount,
        Web3WalletAccountDocumentSnapshot> {
  factory Web3WalletAccountDocumentReference(
          DocumentReference<Web3WalletAccount> reference) =
      _$Web3WalletAccountDocumentReference;

  DocumentReference<Web3WalletAccount> get reference;

  /// A reference to the [Web3WalletAccountCollectionReference] containing this document.
  Web3WalletAccountCollectionReference get parent {
    return _$Web3WalletAccountCollectionReference(
      reference.parent.parent!.withConverter<UserModel>(
        fromFirestore: UserModelCollectionReference.fromFirestore,
        toFirestore: UserModelCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<Web3WalletAccountDocumentSnapshot> snapshots();

  @override
  Future<Web3WalletAccountDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String userUuid,
    FieldValue userUuidFieldValue,
    String web3AccountAddress,
    FieldValue web3AccountAddressFieldValue,
    String? web3AccountName,
    FieldValue web3AccountNameFieldValue,
    String? web3AccountSource,
    FieldValue web3AccountSourceFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String userUuid,
    FieldValue userUuidFieldValue,
    String web3AccountAddress,
    FieldValue web3AccountAddressFieldValue,
    String? web3AccountName,
    FieldValue web3AccountNameFieldValue,
    String? web3AccountSource,
    FieldValue web3AccountSourceFieldValue,
  });
}

class _$Web3WalletAccountDocumentReference extends FirestoreDocumentReference<
        Web3WalletAccount, Web3WalletAccountDocumentSnapshot>
    implements Web3WalletAccountDocumentReference {
  _$Web3WalletAccountDocumentReference(this.reference);

  @override
  final DocumentReference<Web3WalletAccount> reference;

  /// A reference to the [Web3WalletAccountCollectionReference] containing this document.
  Web3WalletAccountCollectionReference get parent {
    return _$Web3WalletAccountCollectionReference(
      reference.parent.parent!.withConverter<UserModel>(
        fromFirestore: UserModelCollectionReference.fromFirestore,
        toFirestore: UserModelCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<Web3WalletAccountDocumentSnapshot> snapshots() {
    return reference.snapshots().map(Web3WalletAccountDocumentSnapshot._);
  }

  @override
  Future<Web3WalletAccountDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(Web3WalletAccountDocumentSnapshot._);
  }

  @override
  Future<Web3WalletAccountDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(Web3WalletAccountDocumentSnapshot._);
  }

  Future<void> update({
    Object? userUuid = _sentinel,
    FieldValue? userUuidFieldValue,
    Object? web3AccountAddress = _sentinel,
    FieldValue? web3AccountAddressFieldValue,
    Object? web3AccountName = _sentinel,
    FieldValue? web3AccountNameFieldValue,
    Object? web3AccountSource = _sentinel,
    FieldValue? web3AccountSourceFieldValue,
  }) async {
    assert(
      userUuid == _sentinel || userUuidFieldValue == null,
      "Cannot specify both userUuid and userUuidFieldValue",
    );
    assert(
      web3AccountAddress == _sentinel || web3AccountAddressFieldValue == null,
      "Cannot specify both web3AccountAddress and web3AccountAddressFieldValue",
    );
    assert(
      web3AccountName == _sentinel || web3AccountNameFieldValue == null,
      "Cannot specify both web3AccountName and web3AccountNameFieldValue",
    );
    assert(
      web3AccountSource == _sentinel || web3AccountSourceFieldValue == null,
      "Cannot specify both web3AccountSource and web3AccountSourceFieldValue",
    );
    final json = {
      if (userUuid != _sentinel)
        _$Web3WalletAccountFieldMap['userUuid']!:
            _$Web3WalletAccountPerFieldToJson.userUuid(userUuid as String),
      if (userUuidFieldValue != null)
        _$Web3WalletAccountFieldMap['userUuid']!: userUuidFieldValue,
      if (web3AccountAddress != _sentinel)
        _$Web3WalletAccountFieldMap['web3AccountAddress']!:
            _$Web3WalletAccountPerFieldToJson
                .web3AccountAddress(web3AccountAddress as String),
      if (web3AccountAddressFieldValue != null)
        _$Web3WalletAccountFieldMap['web3AccountAddress']!:
            web3AccountAddressFieldValue,
      if (web3AccountName != _sentinel)
        _$Web3WalletAccountFieldMap['web3AccountName']!:
            _$Web3WalletAccountPerFieldToJson
                .web3AccountName(web3AccountName as String?),
      if (web3AccountNameFieldValue != null)
        _$Web3WalletAccountFieldMap['web3AccountName']!:
            web3AccountNameFieldValue,
      if (web3AccountSource != _sentinel)
        _$Web3WalletAccountFieldMap['web3AccountSource']!:
            _$Web3WalletAccountPerFieldToJson
                .web3AccountSource(web3AccountSource as String?),
      if (web3AccountSourceFieldValue != null)
        _$Web3WalletAccountFieldMap['web3AccountSource']!:
            web3AccountSourceFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? userUuid = _sentinel,
    FieldValue? userUuidFieldValue,
    Object? web3AccountAddress = _sentinel,
    FieldValue? web3AccountAddressFieldValue,
    Object? web3AccountName = _sentinel,
    FieldValue? web3AccountNameFieldValue,
    Object? web3AccountSource = _sentinel,
    FieldValue? web3AccountSourceFieldValue,
  }) {
    assert(
      userUuid == _sentinel || userUuidFieldValue == null,
      "Cannot specify both userUuid and userUuidFieldValue",
    );
    assert(
      web3AccountAddress == _sentinel || web3AccountAddressFieldValue == null,
      "Cannot specify both web3AccountAddress and web3AccountAddressFieldValue",
    );
    assert(
      web3AccountName == _sentinel || web3AccountNameFieldValue == null,
      "Cannot specify both web3AccountName and web3AccountNameFieldValue",
    );
    assert(
      web3AccountSource == _sentinel || web3AccountSourceFieldValue == null,
      "Cannot specify both web3AccountSource and web3AccountSourceFieldValue",
    );
    final json = {
      if (userUuid != _sentinel)
        _$Web3WalletAccountFieldMap['userUuid']!:
            _$Web3WalletAccountPerFieldToJson.userUuid(userUuid as String),
      if (userUuidFieldValue != null)
        _$Web3WalletAccountFieldMap['userUuid']!: userUuidFieldValue,
      if (web3AccountAddress != _sentinel)
        _$Web3WalletAccountFieldMap['web3AccountAddress']!:
            _$Web3WalletAccountPerFieldToJson
                .web3AccountAddress(web3AccountAddress as String),
      if (web3AccountAddressFieldValue != null)
        _$Web3WalletAccountFieldMap['web3AccountAddress']!:
            web3AccountAddressFieldValue,
      if (web3AccountName != _sentinel)
        _$Web3WalletAccountFieldMap['web3AccountName']!:
            _$Web3WalletAccountPerFieldToJson
                .web3AccountName(web3AccountName as String?),
      if (web3AccountNameFieldValue != null)
        _$Web3WalletAccountFieldMap['web3AccountName']!:
            web3AccountNameFieldValue,
      if (web3AccountSource != _sentinel)
        _$Web3WalletAccountFieldMap['web3AccountSource']!:
            _$Web3WalletAccountPerFieldToJson
                .web3AccountSource(web3AccountSource as String?),
      if (web3AccountSourceFieldValue != null)
        _$Web3WalletAccountFieldMap['web3AccountSource']!:
            web3AccountSourceFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is Web3WalletAccountDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class Web3WalletAccountQuery
    implements
        QueryReference<Web3WalletAccount, Web3WalletAccountQuerySnapshot> {
  @override
  Web3WalletAccountQuery limit(int limit);

  @override
  Web3WalletAccountQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  Web3WalletAccountQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  Web3WalletAccountQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  Web3WalletAccountQuery whereUserUuid({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  Web3WalletAccountQuery whereWeb3AccountAddress({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  Web3WalletAccountQuery whereWeb3AccountName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  Web3WalletAccountQuery whereWeb3AccountSource({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  Web3WalletAccountQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    Web3WalletAccountDocumentSnapshot? startAtDocument,
    Web3WalletAccountDocumentSnapshot? endAtDocument,
    Web3WalletAccountDocumentSnapshot? endBeforeDocument,
    Web3WalletAccountDocumentSnapshot? startAfterDocument,
  });

  Web3WalletAccountQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    Web3WalletAccountDocumentSnapshot? startAtDocument,
    Web3WalletAccountDocumentSnapshot? endAtDocument,
    Web3WalletAccountDocumentSnapshot? endBeforeDocument,
    Web3WalletAccountDocumentSnapshot? startAfterDocument,
  });

  Web3WalletAccountQuery orderByUserUuid({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    Web3WalletAccountDocumentSnapshot? startAtDocument,
    Web3WalletAccountDocumentSnapshot? endAtDocument,
    Web3WalletAccountDocumentSnapshot? endBeforeDocument,
    Web3WalletAccountDocumentSnapshot? startAfterDocument,
  });

  Web3WalletAccountQuery orderByWeb3AccountAddress({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    Web3WalletAccountDocumentSnapshot? startAtDocument,
    Web3WalletAccountDocumentSnapshot? endAtDocument,
    Web3WalletAccountDocumentSnapshot? endBeforeDocument,
    Web3WalletAccountDocumentSnapshot? startAfterDocument,
  });

  Web3WalletAccountQuery orderByWeb3AccountName({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    Web3WalletAccountDocumentSnapshot? startAtDocument,
    Web3WalletAccountDocumentSnapshot? endAtDocument,
    Web3WalletAccountDocumentSnapshot? endBeforeDocument,
    Web3WalletAccountDocumentSnapshot? startAfterDocument,
  });

  Web3WalletAccountQuery orderByWeb3AccountSource({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    Web3WalletAccountDocumentSnapshot? startAtDocument,
    Web3WalletAccountDocumentSnapshot? endAtDocument,
    Web3WalletAccountDocumentSnapshot? endBeforeDocument,
    Web3WalletAccountDocumentSnapshot? startAfterDocument,
  });
}

class _$Web3WalletAccountQuery
    extends QueryReference<Web3WalletAccount, Web3WalletAccountQuerySnapshot>
    implements Web3WalletAccountQuery {
  _$Web3WalletAccountQuery(
    this._collection, {
    required Query<Web3WalletAccount> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<Web3WalletAccountQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(Web3WalletAccountQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<Web3WalletAccountQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(Web3WalletAccountQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Web3WalletAccountQuery limit(int limit) {
    return _$Web3WalletAccountQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  Web3WalletAccountQuery limitToLast(int limit) {
    return _$Web3WalletAccountQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  Web3WalletAccountQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$Web3WalletAccountQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  Web3WalletAccountQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$Web3WalletAccountQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  Web3WalletAccountQuery whereUserUuid({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$Web3WalletAccountQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$Web3WalletAccountFieldMap['userUuid']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$Web3WalletAccountPerFieldToJson.userUuid(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$Web3WalletAccountPerFieldToJson.userUuid(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$Web3WalletAccountPerFieldToJson.userUuid(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$Web3WalletAccountPerFieldToJson
                .userUuid(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$Web3WalletAccountPerFieldToJson
                .userUuid(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$Web3WalletAccountPerFieldToJson
                .userUuid(isGreaterThanOrEqualTo as String)
            : null,
        whereIn:
            whereIn?.map((e) => _$Web3WalletAccountPerFieldToJson.userUuid(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$Web3WalletAccountPerFieldToJson.userUuid(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  Web3WalletAccountQuery whereWeb3AccountAddress({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$Web3WalletAccountQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$Web3WalletAccountFieldMap['web3AccountAddress']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$Web3WalletAccountPerFieldToJson
                .web3AccountAddress(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$Web3WalletAccountPerFieldToJson
                .web3AccountAddress(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$Web3WalletAccountPerFieldToJson
                .web3AccountAddress(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$Web3WalletAccountPerFieldToJson
                .web3AccountAddress(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$Web3WalletAccountPerFieldToJson
                .web3AccountAddress(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$Web3WalletAccountPerFieldToJson
                .web3AccountAddress(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map(
            (e) => _$Web3WalletAccountPerFieldToJson.web3AccountAddress(e)),
        whereNotIn: whereNotIn?.map(
            (e) => _$Web3WalletAccountPerFieldToJson.web3AccountAddress(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  Web3WalletAccountQuery whereWeb3AccountName({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$Web3WalletAccountQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$Web3WalletAccountFieldMap['web3AccountName']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$Web3WalletAccountPerFieldToJson
                .web3AccountName(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$Web3WalletAccountPerFieldToJson
                .web3AccountName(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$Web3WalletAccountPerFieldToJson
                .web3AccountName(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$Web3WalletAccountPerFieldToJson
                .web3AccountName(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$Web3WalletAccountPerFieldToJson
                .web3AccountName(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$Web3WalletAccountPerFieldToJson
                .web3AccountName(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn
            ?.map((e) => _$Web3WalletAccountPerFieldToJson.web3AccountName(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$Web3WalletAccountPerFieldToJson.web3AccountName(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  Web3WalletAccountQuery whereWeb3AccountSource({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$Web3WalletAccountQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$Web3WalletAccountFieldMap['web3AccountSource']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$Web3WalletAccountPerFieldToJson
                .web3AccountSource(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$Web3WalletAccountPerFieldToJson
                .web3AccountSource(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$Web3WalletAccountPerFieldToJson
                .web3AccountSource(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$Web3WalletAccountPerFieldToJson
                .web3AccountSource(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$Web3WalletAccountPerFieldToJson
                .web3AccountSource(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$Web3WalletAccountPerFieldToJson
                .web3AccountSource(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map(
            (e) => _$Web3WalletAccountPerFieldToJson.web3AccountSource(e)),
        whereNotIn: whereNotIn?.map(
            (e) => _$Web3WalletAccountPerFieldToJson.web3AccountSource(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  Web3WalletAccountQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    Web3WalletAccountDocumentSnapshot? startAtDocument,
    Web3WalletAccountDocumentSnapshot? endAtDocument,
    Web3WalletAccountDocumentSnapshot? endBeforeDocument,
    Web3WalletAccountDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$Web3WalletAccountQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  Web3WalletAccountQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    Web3WalletAccountDocumentSnapshot? startAtDocument,
    Web3WalletAccountDocumentSnapshot? endAtDocument,
    Web3WalletAccountDocumentSnapshot? endBeforeDocument,
    Web3WalletAccountDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$Web3WalletAccountQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  Web3WalletAccountQuery orderByUserUuid({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    Web3WalletAccountDocumentSnapshot? startAtDocument,
    Web3WalletAccountDocumentSnapshot? endAtDocument,
    Web3WalletAccountDocumentSnapshot? endBeforeDocument,
    Web3WalletAccountDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$Web3WalletAccountFieldMap['userUuid']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$Web3WalletAccountQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  Web3WalletAccountQuery orderByWeb3AccountAddress({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    Web3WalletAccountDocumentSnapshot? startAtDocument,
    Web3WalletAccountDocumentSnapshot? endAtDocument,
    Web3WalletAccountDocumentSnapshot? endBeforeDocument,
    Web3WalletAccountDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$Web3WalletAccountFieldMap['web3AccountAddress']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$Web3WalletAccountQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  Web3WalletAccountQuery orderByWeb3AccountName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    Web3WalletAccountDocumentSnapshot? startAtDocument,
    Web3WalletAccountDocumentSnapshot? endAtDocument,
    Web3WalletAccountDocumentSnapshot? endBeforeDocument,
    Web3WalletAccountDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$Web3WalletAccountFieldMap['web3AccountName']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$Web3WalletAccountQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  Web3WalletAccountQuery orderByWeb3AccountSource({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    Web3WalletAccountDocumentSnapshot? startAtDocument,
    Web3WalletAccountDocumentSnapshot? endAtDocument,
    Web3WalletAccountDocumentSnapshot? endBeforeDocument,
    Web3WalletAccountDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$Web3WalletAccountFieldMap['web3AccountSource']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$Web3WalletAccountQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$Web3WalletAccountQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class Web3WalletAccountDocumentSnapshot
    extends FirestoreDocumentSnapshot<Web3WalletAccount> {
  Web3WalletAccountDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Web3WalletAccount> snapshot;

  @override
  Web3WalletAccountDocumentReference get reference {
    return Web3WalletAccountDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Web3WalletAccount? data;
}

class Web3WalletAccountQuerySnapshot extends FirestoreQuerySnapshot<
    Web3WalletAccount, Web3WalletAccountQueryDocumentSnapshot> {
  Web3WalletAccountQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory Web3WalletAccountQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Web3WalletAccount> snapshot,
  ) {
    final docs =
        snapshot.docs.map(Web3WalletAccountQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        Web3WalletAccountDocumentSnapshot._,
      );
    }).toList();

    return Web3WalletAccountQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<Web3WalletAccountDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    Web3WalletAccountDocumentSnapshot Function(DocumentSnapshot<T> doc)
        decodeDoc,
  ) {
    return FirestoreDocumentChange<Web3WalletAccountDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Web3WalletAccount> snapshot;

  @override
  final List<Web3WalletAccountQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<Web3WalletAccountDocumentSnapshot>>
      docChanges;
}

class Web3WalletAccountQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Web3WalletAccount>
    implements Web3WalletAccountDocumentSnapshot {
  Web3WalletAccountQueryDocumentSnapshot._(this.snapshot)
      : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Web3WalletAccount> snapshot;

  @override
  final Web3WalletAccount data;

  @override
  Web3WalletAccountDocumentReference get reference {
    return Web3WalletAccountDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class UserAssetCollectionReference
    implements
        UserAssetQuery,
        FirestoreCollectionReference<UserAsset, UserAssetQuerySnapshot> {
  factory UserAssetCollectionReference(
    DocumentReference<UserModel> parent,
  ) = _$UserAssetCollectionReference;

  static UserAsset fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$UserAssetFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    UserAsset value,
    SetOptions? options,
  ) {
    return _$UserAssetToJson(value);
  }

  @override
  CollectionReference<UserAsset> get reference;

  /// A reference to the containing [UserModelDocumentReference] if this is a subcollection.
  UserModelDocumentReference get parent;

  @override
  UserAssetDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<UserAssetDocumentReference> add(UserAsset value);
}

class _$UserAssetCollectionReference extends _$UserAssetQuery
    implements UserAssetCollectionReference {
  factory _$UserAssetCollectionReference(
    DocumentReference<UserModel> parent,
  ) {
    return _$UserAssetCollectionReference._(
      UserModelDocumentReference(parent),
      parent.collection('assets').withConverter(
            fromFirestore: UserAssetCollectionReference.fromFirestore,
            toFirestore: UserAssetCollectionReference.toFirestore,
          ),
    );
  }

  _$UserAssetCollectionReference._(
    this.parent,
    CollectionReference<UserAsset> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final UserModelDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<UserAsset> get reference =>
      super.reference as CollectionReference<UserAsset>;

  @override
  UserAssetDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return UserAssetDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<UserAssetDocumentReference> add(UserAsset value) {
    return reference.add(value).then((ref) => UserAssetDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserAssetCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class UserAssetDocumentReference
    extends FirestoreDocumentReference<UserAsset, UserAssetDocumentSnapshot> {
  factory UserAssetDocumentReference(DocumentReference<UserAsset> reference) =
      _$UserAssetDocumentReference;

  DocumentReference<UserAsset> get reference;

  /// A reference to the [UserAssetCollectionReference] containing this document.
  UserAssetCollectionReference get parent {
    return _$UserAssetCollectionReference(
      reference.parent.parent!.withConverter<UserModel>(
        fromFirestore: UserModelCollectionReference.fromFirestore,
        toFirestore: UserModelCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<UserAssetDocumentSnapshot> snapshots();

  @override
  Future<UserAssetDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String accountAddress,
    FieldValue accountAddressFieldValue,
    String assetId,
    FieldValue assetIdFieldValue,
    String? assetType,
    FieldValue assetTypeFieldValue,
    String deviceId,
    FieldValue deviceIdFieldValue,
    DateTime? paidAt,
    FieldValue paidAtFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String accountAddress,
    FieldValue accountAddressFieldValue,
    String assetId,
    FieldValue assetIdFieldValue,
    String? assetType,
    FieldValue assetTypeFieldValue,
    String deviceId,
    FieldValue deviceIdFieldValue,
    DateTime? paidAt,
    FieldValue paidAtFieldValue,
  });
}

class _$UserAssetDocumentReference
    extends FirestoreDocumentReference<UserAsset, UserAssetDocumentSnapshot>
    implements UserAssetDocumentReference {
  _$UserAssetDocumentReference(this.reference);

  @override
  final DocumentReference<UserAsset> reference;

  /// A reference to the [UserAssetCollectionReference] containing this document.
  UserAssetCollectionReference get parent {
    return _$UserAssetCollectionReference(
      reference.parent.parent!.withConverter<UserModel>(
        fromFirestore: UserModelCollectionReference.fromFirestore,
        toFirestore: UserModelCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<UserAssetDocumentSnapshot> snapshots() {
    return reference.snapshots().map(UserAssetDocumentSnapshot._);
  }

  @override
  Future<UserAssetDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UserAssetDocumentSnapshot._);
  }

  @override
  Future<UserAssetDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(UserAssetDocumentSnapshot._);
  }

  Future<void> update({
    Object? accountAddress = _sentinel,
    FieldValue? accountAddressFieldValue,
    Object? assetId = _sentinel,
    FieldValue? assetIdFieldValue,
    Object? assetType = _sentinel,
    FieldValue? assetTypeFieldValue,
    Object? deviceId = _sentinel,
    FieldValue? deviceIdFieldValue,
    Object? paidAt = _sentinel,
    FieldValue? paidAtFieldValue,
  }) async {
    assert(
      accountAddress == _sentinel || accountAddressFieldValue == null,
      "Cannot specify both accountAddress and accountAddressFieldValue",
    );
    assert(
      assetId == _sentinel || assetIdFieldValue == null,
      "Cannot specify both assetId and assetIdFieldValue",
    );
    assert(
      assetType == _sentinel || assetTypeFieldValue == null,
      "Cannot specify both assetType and assetTypeFieldValue",
    );
    assert(
      deviceId == _sentinel || deviceIdFieldValue == null,
      "Cannot specify both deviceId and deviceIdFieldValue",
    );
    assert(
      paidAt == _sentinel || paidAtFieldValue == null,
      "Cannot specify both paidAt and paidAtFieldValue",
    );
    final json = {
      if (accountAddress != _sentinel)
        _$UserAssetFieldMap['accountAddress']!:
            _$UserAssetPerFieldToJson.accountAddress(accountAddress as String),
      if (accountAddressFieldValue != null)
        _$UserAssetFieldMap['accountAddress']!: accountAddressFieldValue,
      if (assetId != _sentinel)
        _$UserAssetFieldMap['assetId']!:
            _$UserAssetPerFieldToJson.assetId(assetId as String),
      if (assetIdFieldValue != null)
        _$UserAssetFieldMap['assetId']!: assetIdFieldValue,
      if (assetType != _sentinel)
        _$UserAssetFieldMap['assetType']!:
            _$UserAssetPerFieldToJson.assetType(assetType as String?),
      if (assetTypeFieldValue != null)
        _$UserAssetFieldMap['assetType']!: assetTypeFieldValue,
      if (deviceId != _sentinel)
        _$UserAssetFieldMap['deviceId']!:
            _$UserAssetPerFieldToJson.deviceId(deviceId as String),
      if (deviceIdFieldValue != null)
        _$UserAssetFieldMap['deviceId']!: deviceIdFieldValue,
      if (paidAt != _sentinel)
        _$UserAssetFieldMap['paidAt']!:
            _$UserAssetPerFieldToJson.paidAt(paidAt as DateTime?),
      if (paidAtFieldValue != null)
        _$UserAssetFieldMap['paidAt']!: paidAtFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? accountAddress = _sentinel,
    FieldValue? accountAddressFieldValue,
    Object? assetId = _sentinel,
    FieldValue? assetIdFieldValue,
    Object? assetType = _sentinel,
    FieldValue? assetTypeFieldValue,
    Object? deviceId = _sentinel,
    FieldValue? deviceIdFieldValue,
    Object? paidAt = _sentinel,
    FieldValue? paidAtFieldValue,
  }) {
    assert(
      accountAddress == _sentinel || accountAddressFieldValue == null,
      "Cannot specify both accountAddress and accountAddressFieldValue",
    );
    assert(
      assetId == _sentinel || assetIdFieldValue == null,
      "Cannot specify both assetId and assetIdFieldValue",
    );
    assert(
      assetType == _sentinel || assetTypeFieldValue == null,
      "Cannot specify both assetType and assetTypeFieldValue",
    );
    assert(
      deviceId == _sentinel || deviceIdFieldValue == null,
      "Cannot specify both deviceId and deviceIdFieldValue",
    );
    assert(
      paidAt == _sentinel || paidAtFieldValue == null,
      "Cannot specify both paidAt and paidAtFieldValue",
    );
    final json = {
      if (accountAddress != _sentinel)
        _$UserAssetFieldMap['accountAddress']!:
            _$UserAssetPerFieldToJson.accountAddress(accountAddress as String),
      if (accountAddressFieldValue != null)
        _$UserAssetFieldMap['accountAddress']!: accountAddressFieldValue,
      if (assetId != _sentinel)
        _$UserAssetFieldMap['assetId']!:
            _$UserAssetPerFieldToJson.assetId(assetId as String),
      if (assetIdFieldValue != null)
        _$UserAssetFieldMap['assetId']!: assetIdFieldValue,
      if (assetType != _sentinel)
        _$UserAssetFieldMap['assetType']!:
            _$UserAssetPerFieldToJson.assetType(assetType as String?),
      if (assetTypeFieldValue != null)
        _$UserAssetFieldMap['assetType']!: assetTypeFieldValue,
      if (deviceId != _sentinel)
        _$UserAssetFieldMap['deviceId']!:
            _$UserAssetPerFieldToJson.deviceId(deviceId as String),
      if (deviceIdFieldValue != null)
        _$UserAssetFieldMap['deviceId']!: deviceIdFieldValue,
      if (paidAt != _sentinel)
        _$UserAssetFieldMap['paidAt']!:
            _$UserAssetPerFieldToJson.paidAt(paidAt as DateTime?),
      if (paidAtFieldValue != null)
        _$UserAssetFieldMap['paidAt']!: paidAtFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is UserAssetDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class UserAssetQuery
    implements QueryReference<UserAsset, UserAssetQuerySnapshot> {
  @override
  UserAssetQuery limit(int limit);

  @override
  UserAssetQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  UserAssetQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  UserAssetQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UserAssetQuery whereAccountAddress({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UserAssetQuery whereAssetId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UserAssetQuery whereAssetType({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  UserAssetQuery whereDeviceId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UserAssetQuery wherePaidAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  UserAssetQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    UserAssetDocumentSnapshot? startAtDocument,
    UserAssetDocumentSnapshot? endAtDocument,
    UserAssetDocumentSnapshot? endBeforeDocument,
    UserAssetDocumentSnapshot? startAfterDocument,
  });

  UserAssetQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserAssetDocumentSnapshot? startAtDocument,
    UserAssetDocumentSnapshot? endAtDocument,
    UserAssetDocumentSnapshot? endBeforeDocument,
    UserAssetDocumentSnapshot? startAfterDocument,
  });

  UserAssetQuery orderByAccountAddress({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserAssetDocumentSnapshot? startAtDocument,
    UserAssetDocumentSnapshot? endAtDocument,
    UserAssetDocumentSnapshot? endBeforeDocument,
    UserAssetDocumentSnapshot? startAfterDocument,
  });

  UserAssetQuery orderByAssetId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserAssetDocumentSnapshot? startAtDocument,
    UserAssetDocumentSnapshot? endAtDocument,
    UserAssetDocumentSnapshot? endBeforeDocument,
    UserAssetDocumentSnapshot? startAfterDocument,
  });

  UserAssetQuery orderByAssetType({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    UserAssetDocumentSnapshot? startAtDocument,
    UserAssetDocumentSnapshot? endAtDocument,
    UserAssetDocumentSnapshot? endBeforeDocument,
    UserAssetDocumentSnapshot? startAfterDocument,
  });

  UserAssetQuery orderByDeviceId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserAssetDocumentSnapshot? startAtDocument,
    UserAssetDocumentSnapshot? endAtDocument,
    UserAssetDocumentSnapshot? endBeforeDocument,
    UserAssetDocumentSnapshot? startAfterDocument,
  });

  UserAssetQuery orderByPaidAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    UserAssetDocumentSnapshot? startAtDocument,
    UserAssetDocumentSnapshot? endAtDocument,
    UserAssetDocumentSnapshot? endBeforeDocument,
    UserAssetDocumentSnapshot? startAfterDocument,
  });
}

class _$UserAssetQuery extends QueryReference<UserAsset, UserAssetQuerySnapshot>
    implements UserAssetQuery {
  _$UserAssetQuery(
    this._collection, {
    required Query<UserAsset> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<UserAssetQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(UserAssetQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<UserAssetQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(UserAssetQuerySnapshot._fromQuerySnapshot);
  }

  @override
  UserAssetQuery limit(int limit) {
    return _$UserAssetQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserAssetQuery limitToLast(int limit) {
    return _$UserAssetQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserAssetQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserAssetQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserAssetQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserAssetQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserAssetQuery whereAccountAddress({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserAssetQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserAssetFieldMap['accountAddress']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserAssetPerFieldToJson.accountAddress(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserAssetPerFieldToJson.accountAddress(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserAssetPerFieldToJson.accountAddress(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserAssetPerFieldToJson
                .accountAddress(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserAssetPerFieldToJson.accountAddress(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserAssetPerFieldToJson
                .accountAddress(isGreaterThanOrEqualTo as String)
            : null,
        whereIn:
            whereIn?.map((e) => _$UserAssetPerFieldToJson.accountAddress(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$UserAssetPerFieldToJson.accountAddress(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserAssetQuery whereAssetId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserAssetQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserAssetFieldMap['assetId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserAssetPerFieldToJson.assetId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserAssetPerFieldToJson.assetId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserAssetPerFieldToJson.assetId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserAssetPerFieldToJson.assetId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserAssetPerFieldToJson.assetId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserAssetPerFieldToJson
                .assetId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$UserAssetPerFieldToJson.assetId(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$UserAssetPerFieldToJson.assetId(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserAssetQuery whereAssetType({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserAssetQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserAssetFieldMap['assetType']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserAssetPerFieldToJson.assetType(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserAssetPerFieldToJson.assetType(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$UserAssetPerFieldToJson.assetType(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserAssetPerFieldToJson
                .assetType(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserAssetPerFieldToJson.assetType(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserAssetPerFieldToJson
                .assetType(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map((e) => _$UserAssetPerFieldToJson.assetType(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$UserAssetPerFieldToJson.assetType(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserAssetQuery whereDeviceId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserAssetQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserAssetFieldMap['deviceId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserAssetPerFieldToJson.deviceId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserAssetPerFieldToJson.deviceId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserAssetPerFieldToJson.deviceId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserAssetPerFieldToJson.deviceId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserAssetPerFieldToJson.deviceId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserAssetPerFieldToJson
                .deviceId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$UserAssetPerFieldToJson.deviceId(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$UserAssetPerFieldToJson.deviceId(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserAssetQuery wherePaidAt({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserAssetQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserAssetFieldMap['paidAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserAssetPerFieldToJson.paidAt(isEqualTo as DateTime?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserAssetPerFieldToJson.paidAt(isNotEqualTo as DateTime?)
            : null,
        isLessThan: isLessThan != null
            ? _$UserAssetPerFieldToJson.paidAt(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserAssetPerFieldToJson.paidAt(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserAssetPerFieldToJson.paidAt(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserAssetPerFieldToJson
                .paidAt(isGreaterThanOrEqualTo as DateTime?)
            : null,
        whereIn: whereIn?.map((e) => _$UserAssetPerFieldToJson.paidAt(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserAssetPerFieldToJson.paidAt(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserAssetQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserAssetDocumentSnapshot? startAtDocument,
    UserAssetDocumentSnapshot? endAtDocument,
    UserAssetDocumentSnapshot? endBeforeDocument,
    UserAssetDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserAssetQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserAssetQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserAssetDocumentSnapshot? startAtDocument,
    UserAssetDocumentSnapshot? endAtDocument,
    UserAssetDocumentSnapshot? endBeforeDocument,
    UserAssetDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserAssetQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserAssetQuery orderByAccountAddress({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserAssetDocumentSnapshot? startAtDocument,
    UserAssetDocumentSnapshot? endAtDocument,
    UserAssetDocumentSnapshot? endBeforeDocument,
    UserAssetDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$UserAssetFieldMap['accountAddress']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserAssetQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserAssetQuery orderByAssetId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserAssetDocumentSnapshot? startAtDocument,
    UserAssetDocumentSnapshot? endAtDocument,
    UserAssetDocumentSnapshot? endBeforeDocument,
    UserAssetDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$UserAssetFieldMap['assetId']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserAssetQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserAssetQuery orderByAssetType({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserAssetDocumentSnapshot? startAtDocument,
    UserAssetDocumentSnapshot? endAtDocument,
    UserAssetDocumentSnapshot? endBeforeDocument,
    UserAssetDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$UserAssetFieldMap['assetType']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserAssetQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserAssetQuery orderByDeviceId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserAssetDocumentSnapshot? startAtDocument,
    UserAssetDocumentSnapshot? endAtDocument,
    UserAssetDocumentSnapshot? endBeforeDocument,
    UserAssetDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$UserAssetFieldMap['deviceId']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserAssetQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserAssetQuery orderByPaidAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserAssetDocumentSnapshot? startAtDocument,
    UserAssetDocumentSnapshot? endAtDocument,
    UserAssetDocumentSnapshot? endBeforeDocument,
    UserAssetDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$UserAssetFieldMap['paidAt']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserAssetQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserAssetQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class UserAssetDocumentSnapshot extends FirestoreDocumentSnapshot<UserAsset> {
  UserAssetDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<UserAsset> snapshot;

  @override
  UserAssetDocumentReference get reference {
    return UserAssetDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final UserAsset? data;
}

class UserAssetQuerySnapshot
    extends FirestoreQuerySnapshot<UserAsset, UserAssetQueryDocumentSnapshot> {
  UserAssetQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory UserAssetQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<UserAsset> snapshot,
  ) {
    final docs = snapshot.docs.map(UserAssetQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        UserAssetDocumentSnapshot._,
      );
    }).toList();

    return UserAssetQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<UserAssetDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    UserAssetDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<UserAssetDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<UserAsset> snapshot;

  @override
  final List<UserAssetQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<UserAssetDocumentSnapshot>> docChanges;
}

class UserAssetQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<UserAsset>
    implements UserAssetDocumentSnapshot {
  UserAssetQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<UserAsset> snapshot;

  @override
  final UserAsset data;

  @override
  UserAssetDocumentReference get reference {
    return UserAssetDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      addresses: (json['addresses'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      id: json['id'] as String,
      role: json['role'] as String? ?? 'user',
      uuid: json['uuid'] as String,
      createdAt: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['created_at'], const FirestoreDateTimeConverter().fromJson),
      deviceId: json['device_id'] as String?,
      lastConnection: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['last_connection'], const FirestoreDateTimeConverter().fromJson),
    );

const _$UserModelFieldMap = <String, String>{
  'uuid': 'uuid',
  'createdAt': 'created_at',
  'deviceId': 'device_id',
  'addresses': 'addresses',
  'id': 'id',
  'lastConnection': 'last_connection',
  'role': 'role',
};

// ignore: unused_element
abstract class _$UserModelPerFieldToJson {
  // ignore: unused_element
  static Object? uuid(String instance) => instance;
  // ignore: unused_element
  static Object? createdAt(DateTime? instance) =>
      _$JsonConverterToJson<Timestamp, DateTime>(
          instance, const FirestoreDateTimeConverter().toJson);
  // ignore: unused_element
  static Object? deviceId(String? instance) => instance;
  // ignore: unused_element
  static Object? addresses(List<String> instance) => instance;
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? lastConnection(DateTime? instance) =>
      _$JsonConverterToJson<Timestamp, DateTime>(
          instance, const FirestoreDateTimeConverter().toJson);
  // ignore: unused_element
  static Object? role(String instance) => instance;
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'created_at': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.createdAt, const FirestoreDateTimeConverter().toJson),
      'device_id': instance.deviceId,
      'addresses': instance.addresses,
      'id': instance.id,
      'last_connection': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.lastConnection, const FirestoreDateTimeConverter().toJson),
      'role': instance.role,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

Web3WalletAccount _$Web3WalletAccountFromJson(Map<String, dynamic> json) =>
    Web3WalletAccount(
      userUuid: json['user_uuid'] as String,
      web3AccountAddress: json['web3_account_address'] as String,
      web3AccountName: json['web3_account_name'] as String?,
      web3AccountSource: json['web3_account_source'] as String? ?? 'android',
    );

const _$Web3WalletAccountFieldMap = <String, String>{
  'userUuid': 'user_uuid',
  'web3AccountAddress': 'web3_account_address',
  'web3AccountName': 'web3_account_name',
  'web3AccountSource': 'web3_account_source',
};

// ignore: unused_element
abstract class _$Web3WalletAccountPerFieldToJson {
  // ignore: unused_element
  static Object? userUuid(String instance) => instance;
  // ignore: unused_element
  static Object? web3AccountAddress(String instance) => instance;
  // ignore: unused_element
  static Object? web3AccountName(String? instance) => instance;
  // ignore: unused_element
  static Object? web3AccountSource(String? instance) => instance;
}

Map<String, dynamic> _$Web3WalletAccountToJson(Web3WalletAccount instance) =>
    <String, dynamic>{
      'user_uuid': instance.userUuid,
      'web3_account_address': instance.web3AccountAddress,
      'web3_account_name': instance.web3AccountName,
      'web3_account_source': instance.web3AccountSource,
    };

UserAsset _$UserAssetFromJson(Map<String, dynamic> json) => UserAsset(
      accountAddress: json['account_address'] as String,
      assetId: json['asset_id'] as String,
      assetType: json['asset_type'] as String?,
      deviceId: json['device_id'] as String,
      paidAt: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['paid_at'], const FirestoreDateTimeConverter().fromJson),
    );

const _$UserAssetFieldMap = <String, String>{
  'accountAddress': 'account_address',
  'assetId': 'asset_id',
  'assetType': 'asset_type',
  'deviceId': 'device_id',
  'paidAt': 'paid_at',
};

// ignore: unused_element
abstract class _$UserAssetPerFieldToJson {
  // ignore: unused_element
  static Object? accountAddress(String instance) => instance;
  // ignore: unused_element
  static Object? assetId(String instance) => instance;
  // ignore: unused_element
  static Object? assetType(String? instance) => instance;
  // ignore: unused_element
  static Object? deviceId(String instance) => instance;
  // ignore: unused_element
  static Object? paidAt(DateTime? instance) =>
      _$JsonConverterToJson<Timestamp, DateTime>(
          instance, const FirestoreDateTimeConverter().toJson);
}

Map<String, dynamic> _$UserAssetToJson(UserAsset instance) => <String, dynamic>{
      'account_address': instance.accountAddress,
      'asset_id': instance.assetId,
      'asset_type': instance.assetType,
      'device_id': instance.deviceId,
      'paid_at': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.paidAt, const FirestoreDateTimeConverter().toJson),
    };
