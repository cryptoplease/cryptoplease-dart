// Mocks generated by Mockito 5.3.2 from annotations
// in solana_seed_vault/test/seed_vault_wallet_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:solana_seed_vault/src/api.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [WalletApiHost].
///
/// See the documentation for Mockito's code generation for more information.
class MockWalletApiHost extends _i1.Mock implements _i2.WalletApiHost {
  MockWalletApiHost() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<int> authorizeSeed(int? arg_purpose) => (super.noSuchMethod(
        Invocation.method(
          #authorizeSeed,
          [arg_purpose],
        ),
        returnValue: _i3.Future<int>.value(0),
      ) as _i3.Future<int>);
  @override
  _i3.Future<int> createSeed(int? arg_purpose) => (super.noSuchMethod(
        Invocation.method(
          #createSeed,
          [arg_purpose],
        ),
        returnValue: _i3.Future<int>.value(0),
      ) as _i3.Future<int>);
  @override
  _i3.Future<int> importSeed(int? arg_purpose) => (super.noSuchMethod(
        Invocation.method(
          #importSeed,
          [arg_purpose],
        ),
        returnValue: _i3.Future<int>.value(0),
      ) as _i3.Future<int>);
  @override
  _i3.Future<List<_i2.SigningResponseDto?>> signMessages(
    int? arg_authToken,
    List<_i2.SigningRequestDto?>? arg_signingRequests,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #signMessages,
          [
            arg_authToken,
            arg_signingRequests,
          ],
        ),
        returnValue: _i3.Future<List<_i2.SigningResponseDto?>>.value(
            <_i2.SigningResponseDto?>[]),
      ) as _i3.Future<List<_i2.SigningResponseDto?>>);
  @override
  _i3.Future<List<_i2.SigningResponseDto?>> signTransactions(
    int? arg_authToken,
    List<_i2.SigningRequestDto?>? arg_signingRequests,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #signTransactions,
          [
            arg_authToken,
            arg_signingRequests,
          ],
        ),
        returnValue: _i3.Future<List<_i2.SigningResponseDto?>>.value(
            <_i2.SigningResponseDto?>[]),
      ) as _i3.Future<List<_i2.SigningResponseDto?>>);
  @override
  _i3.Future<List<_i2.PublicKeyResponseDto?>> requestPublicKeys(
    int? arg_authToken,
    List<String?>? arg_derivationPaths,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #requestPublicKeys,
          [
            arg_authToken,
            arg_derivationPaths,
          ],
        ),
        returnValue: _i3.Future<List<_i2.PublicKeyResponseDto?>>.value(
            <_i2.PublicKeyResponseDto?>[]),
      ) as _i3.Future<List<_i2.PublicKeyResponseDto?>>);
  @override
  _i3.Future<List<Map<Object?, Object?>?>> getAuthorizedSeeds(
    List<String?>? arg_projection,
    String? arg_filterOnColumn,
    Object? arg_value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAuthorizedSeeds,
          [
            arg_projection,
            arg_filterOnColumn,
            arg_value,
          ],
        ),
        returnValue: _i3.Future<List<Map<Object?, Object?>?>>.value(
            <Map<Object?, Object?>?>[]),
      ) as _i3.Future<List<Map<Object?, Object?>?>>);
  @override
  _i3.Future<Map<Object?, Object?>> getAuthorizedSeed(
    int? arg_authToken,
    List<String?>? arg_projection,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAuthorizedSeed,
          [
            arg_authToken,
            arg_projection,
          ],
        ),
        returnValue:
            _i3.Future<Map<Object?, Object?>>.value(<Object?, Object?>{}),
      ) as _i3.Future<Map<Object?, Object?>>);
  @override
  _i3.Future<void> deauthorizeSeed(int? arg_authToken) => (super.noSuchMethod(
        Invocation.method(
          #deauthorizeSeed,
          [arg_authToken],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<List<Map<Object?, Object?>?>> getUnauthorizedSeeds(
    List<String?>? arg_projection,
    String? arg_filterOnColumn,
    Object? arg_value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #getUnauthorizedSeeds,
          [
            arg_projection,
            arg_filterOnColumn,
            arg_value,
          ],
        ),
        returnValue: _i3.Future<List<Map<Object?, Object?>?>>.value(
            <Map<Object?, Object?>?>[]),
      ) as _i3.Future<List<Map<Object?, Object?>?>>);
  @override
  _i3.Future<bool> hasUnauthorizedSeedsForPurpose(int? arg_purpose) =>
      (super.noSuchMethod(
        Invocation.method(
          #hasUnauthorizedSeedsForPurpose,
          [arg_purpose],
        ),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);
  @override
  _i3.Future<List<Map<Object?, Object?>?>> getAccounts(
    int? arg_authToken,
    List<String?>? arg_projection,
    String? arg_filterOnColumn,
    Object? arg_value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAccounts,
          [
            arg_authToken,
            arg_projection,
            arg_filterOnColumn,
            arg_value,
          ],
        ),
        returnValue: _i3.Future<List<Map<Object?, Object?>?>>.value(
            <Map<Object?, Object?>?>[]),
      ) as _i3.Future<List<Map<Object?, Object?>?>>);
  @override
  _i3.Future<Map<Object?, Object?>> getAccount(
    int? arg_authToken,
    int? arg_id,
    List<String?>? arg_projection,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAccount,
          [
            arg_authToken,
            arg_id,
            arg_projection,
          ],
        ),
        returnValue:
            _i3.Future<Map<Object?, Object?>>.value(<Object?, Object?>{}),
      ) as _i3.Future<Map<Object?, Object?>>);
  @override
  _i3.Future<void> updateAccountName(
    int? arg_authToken,
    int? arg_accountId,
    String? arg_name,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateAccountName,
          [
            arg_authToken,
            arg_accountId,
            arg_name,
          ],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<void> updateAccountIsUserWallet(
    int? arg_authToken,
    int? arg_accountId,
    bool? arg_isUserWallet,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateAccountIsUserWallet,
          [
            arg_authToken,
            arg_accountId,
            arg_isUserWallet,
          ],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<void> updateAccountIsValid(
    int? arg_authToken,
    int? arg_accountId,
    bool? arg_isValid,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateAccountIsValid,
          [
            arg_authToken,
            arg_accountId,
            arg_isValid,
          ],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<List<Map<Object?, Object?>?>> getImplementationLimits(
    List<String?>? arg_projection,
    String? arg_filterOnColumn,
    Object? arg_value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #getImplementationLimits,
          [
            arg_projection,
            arg_filterOnColumn,
            arg_value,
          ],
        ),
        returnValue: _i3.Future<List<Map<Object?, Object?>?>>.value(
            <Map<Object?, Object?>?>[]),
      ) as _i3.Future<List<Map<Object?, Object?>?>>);
  @override
  _i3.Future<Map<Object?, Object?>> getImplementationLimitsForPurpose(
          int? arg_purpose) =>
      (super.noSuchMethod(
        Invocation.method(
          #getImplementationLimitsForPurpose,
          [arg_purpose],
        ),
        returnValue:
            _i3.Future<Map<Object?, Object?>>.value(<Object?, Object?>{}),
      ) as _i3.Future<Map<Object?, Object?>>);
  @override
  _i3.Future<String> resolveDerivationPath(
    String? arg_derivationPath,
    int? arg_purpose,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #resolveDerivationPath,
          [
            arg_derivationPath,
            arg_purpose,
          ],
        ),
        returnValue: _i3.Future<String>.value(''),
      ) as _i3.Future<String>);
  @override
  _i3.Future<bool> isAvailable(bool? arg_allowSimulated) => (super.noSuchMethod(
        Invocation.method(
          #isAvailable,
          [arg_allowSimulated],
        ),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);
  @override
  _i3.Future<bool> checkPermission() => (super.noSuchMethod(
        Invocation.method(
          #checkPermission,
          [],
        ),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);
}
