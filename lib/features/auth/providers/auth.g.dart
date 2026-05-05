// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SignInFormNotifier)
final signInFormProvider = SignInFormNotifierProvider._();

final class SignInFormNotifierProvider
    extends $NotifierProvider<SignInFormNotifier, SignInFormState> {
  SignInFormNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'signInFormProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$signInFormNotifierHash();

  @$internal
  @override
  SignInFormNotifier create() => SignInFormNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SignInFormState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SignInFormState>(value),
    );
  }
}

String _$signInFormNotifierHash() =>
    r'cc6984a6dcc3eebf2e2fac285cd42ba797801c61';

abstract class _$SignInFormNotifier extends $Notifier<SignInFormState> {
  SignInFormState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<SignInFormState, SignInFormState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SignInFormState, SignInFormState>,
              SignInFormState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(OTPFormNotifier)
final oTPFormProvider = OTPFormNotifierProvider._();

final class OTPFormNotifierProvider
    extends $NotifierProvider<OTPFormNotifier, OTPFormState> {
  OTPFormNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'oTPFormProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$oTPFormNotifierHash();

  @$internal
  @override
  OTPFormNotifier create() => OTPFormNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OTPFormState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OTPFormState>(value),
    );
  }
}

String _$oTPFormNotifierHash() => r'4125bc683681b25a9378b3a60ca18689ea0f4436';

abstract class _$OTPFormNotifier extends $Notifier<OTPFormState> {
  OTPFormState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<OTPFormState, OTPFormState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<OTPFormState, OTPFormState>,
              OTPFormState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(user)
final userProvider = UserProvider._();

final class UserProvider
    extends $FunctionalProvider<AsyncValue<User>, User, FutureOr<User>>
    with $FutureModifier<User>, $FutureProvider<User> {
  UserProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userHash();

  @$internal
  @override
  $FutureProviderElement<User> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<User> create(Ref ref) {
    return user(ref);
  }
}

String _$userHash() => r'efa1670fd57ecdeb590ad99080865e974a52f8bf';
