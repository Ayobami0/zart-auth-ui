// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignInFormState {

 String get firstname; String get lastname; String get homeAddress; String get phone; String get email; bool get tosAccepted; bool get loading; bool get success; String? get error;
/// Create a copy of SignInFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInFormStateCopyWith<SignInFormState> get copyWith => _$SignInFormStateCopyWithImpl<SignInFormState>(this as SignInFormState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInFormState&&(identical(other.firstname, firstname) || other.firstname == firstname)&&(identical(other.lastname, lastname) || other.lastname == lastname)&&(identical(other.homeAddress, homeAddress) || other.homeAddress == homeAddress)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.tosAccepted, tosAccepted) || other.tosAccepted == tosAccepted)&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.success, success) || other.success == success)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,firstname,lastname,homeAddress,phone,email,tosAccepted,loading,success,error);

@override
String toString() {
  return 'SignInFormState(firstname: $firstname, lastname: $lastname, homeAddress: $homeAddress, phone: $phone, email: $email, tosAccepted: $tosAccepted, loading: $loading, success: $success, error: $error)';
}


}

/// @nodoc
abstract mixin class $SignInFormStateCopyWith<$Res>  {
  factory $SignInFormStateCopyWith(SignInFormState value, $Res Function(SignInFormState) _then) = _$SignInFormStateCopyWithImpl;
@useResult
$Res call({
 String firstname, String lastname, String homeAddress, String phone, String email, bool tosAccepted, bool loading, bool success, String? error
});




}
/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._self, this._then);

  final SignInFormState _self;
  final $Res Function(SignInFormState) _then;

/// Create a copy of SignInFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstname = null,Object? lastname = null,Object? homeAddress = null,Object? phone = null,Object? email = null,Object? tosAccepted = null,Object? loading = null,Object? success = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
firstname: null == firstname ? _self.firstname : firstname // ignore: cast_nullable_to_non_nullable
as String,lastname: null == lastname ? _self.lastname : lastname // ignore: cast_nullable_to_non_nullable
as String,homeAddress: null == homeAddress ? _self.homeAddress : homeAddress // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,tosAccepted: null == tosAccepted ? _self.tosAccepted : tosAccepted // ignore: cast_nullable_to_non_nullable
as bool,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SignInFormState].
extension SignInFormStatePatterns on SignInFormState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignInFormState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignInFormState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignInFormState value)  $default,){
final _that = this;
switch (_that) {
case _SignInFormState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignInFormState value)?  $default,){
final _that = this;
switch (_that) {
case _SignInFormState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String firstname,  String lastname,  String homeAddress,  String phone,  String email,  bool tosAccepted,  bool loading,  bool success,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignInFormState() when $default != null:
return $default(_that.firstname,_that.lastname,_that.homeAddress,_that.phone,_that.email,_that.tosAccepted,_that.loading,_that.success,_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String firstname,  String lastname,  String homeAddress,  String phone,  String email,  bool tosAccepted,  bool loading,  bool success,  String? error)  $default,) {final _that = this;
switch (_that) {
case _SignInFormState():
return $default(_that.firstname,_that.lastname,_that.homeAddress,_that.phone,_that.email,_that.tosAccepted,_that.loading,_that.success,_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String firstname,  String lastname,  String homeAddress,  String phone,  String email,  bool tosAccepted,  bool loading,  bool success,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _SignInFormState() when $default != null:
return $default(_that.firstname,_that.lastname,_that.homeAddress,_that.phone,_that.email,_that.tosAccepted,_that.loading,_that.success,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _SignInFormState implements SignInFormState {
  const _SignInFormState({this.firstname = '', this.lastname = '', this.homeAddress = '', this.phone = '', this.email = '', this.tosAccepted = false, this.loading = false, this.success = false, this.error});
  

@override@JsonKey() final  String firstname;
@override@JsonKey() final  String lastname;
@override@JsonKey() final  String homeAddress;
@override@JsonKey() final  String phone;
@override@JsonKey() final  String email;
@override@JsonKey() final  bool tosAccepted;
@override@JsonKey() final  bool loading;
@override@JsonKey() final  bool success;
@override final  String? error;

/// Create a copy of SignInFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInFormStateCopyWith<_SignInFormState> get copyWith => __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInFormState&&(identical(other.firstname, firstname) || other.firstname == firstname)&&(identical(other.lastname, lastname) || other.lastname == lastname)&&(identical(other.homeAddress, homeAddress) || other.homeAddress == homeAddress)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.tosAccepted, tosAccepted) || other.tosAccepted == tosAccepted)&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.success, success) || other.success == success)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,firstname,lastname,homeAddress,phone,email,tosAccepted,loading,success,error);

@override
String toString() {
  return 'SignInFormState(firstname: $firstname, lastname: $lastname, homeAddress: $homeAddress, phone: $phone, email: $email, tosAccepted: $tosAccepted, loading: $loading, success: $success, error: $error)';
}


}

/// @nodoc
abstract mixin class _$SignInFormStateCopyWith<$Res> implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(_SignInFormState value, $Res Function(_SignInFormState) _then) = __$SignInFormStateCopyWithImpl;
@override @useResult
$Res call({
 String firstname, String lastname, String homeAddress, String phone, String email, bool tosAccepted, bool loading, bool success, String? error
});




}
/// @nodoc
class __$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(this._self, this._then);

  final _SignInFormState _self;
  final $Res Function(_SignInFormState) _then;

/// Create a copy of SignInFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstname = null,Object? lastname = null,Object? homeAddress = null,Object? phone = null,Object? email = null,Object? tosAccepted = null,Object? loading = null,Object? success = null,Object? error = freezed,}) {
  return _then(_SignInFormState(
firstname: null == firstname ? _self.firstname : firstname // ignore: cast_nullable_to_non_nullable
as String,lastname: null == lastname ? _self.lastname : lastname // ignore: cast_nullable_to_non_nullable
as String,homeAddress: null == homeAddress ? _self.homeAddress : homeAddress // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,tosAccepted: null == tosAccepted ? _self.tosAccepted : tosAccepted // ignore: cast_nullable_to_non_nullable
as bool,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$OTPFormState {

 String get otp; bool get loading; bool get resending; int get countdown; bool get success; String? get error;
/// Create a copy of OTPFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OTPFormStateCopyWith<OTPFormState> get copyWith => _$OTPFormStateCopyWithImpl<OTPFormState>(this as OTPFormState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OTPFormState&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.resending, resending) || other.resending == resending)&&(identical(other.countdown, countdown) || other.countdown == countdown)&&(identical(other.success, success) || other.success == success)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,otp,loading,resending,countdown,success,error);

@override
String toString() {
  return 'OTPFormState(otp: $otp, loading: $loading, resending: $resending, countdown: $countdown, success: $success, error: $error)';
}


}

/// @nodoc
abstract mixin class $OTPFormStateCopyWith<$Res>  {
  factory $OTPFormStateCopyWith(OTPFormState value, $Res Function(OTPFormState) _then) = _$OTPFormStateCopyWithImpl;
@useResult
$Res call({
 String otp, bool loading, bool resending, int countdown, bool success, String? error
});




}
/// @nodoc
class _$OTPFormStateCopyWithImpl<$Res>
    implements $OTPFormStateCopyWith<$Res> {
  _$OTPFormStateCopyWithImpl(this._self, this._then);

  final OTPFormState _self;
  final $Res Function(OTPFormState) _then;

/// Create a copy of OTPFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? otp = null,Object? loading = null,Object? resending = null,Object? countdown = null,Object? success = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,resending: null == resending ? _self.resending : resending // ignore: cast_nullable_to_non_nullable
as bool,countdown: null == countdown ? _self.countdown : countdown // ignore: cast_nullable_to_non_nullable
as int,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OTPFormState].
extension OTPFormStatePatterns on OTPFormState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OTPFormState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OTPFormState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OTPFormState value)  $default,){
final _that = this;
switch (_that) {
case _OTPFormState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OTPFormState value)?  $default,){
final _that = this;
switch (_that) {
case _OTPFormState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String otp,  bool loading,  bool resending,  int countdown,  bool success,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OTPFormState() when $default != null:
return $default(_that.otp,_that.loading,_that.resending,_that.countdown,_that.success,_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String otp,  bool loading,  bool resending,  int countdown,  bool success,  String? error)  $default,) {final _that = this;
switch (_that) {
case _OTPFormState():
return $default(_that.otp,_that.loading,_that.resending,_that.countdown,_that.success,_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String otp,  bool loading,  bool resending,  int countdown,  bool success,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _OTPFormState() when $default != null:
return $default(_that.otp,_that.loading,_that.resending,_that.countdown,_that.success,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _OTPFormState implements OTPFormState {
  const _OTPFormState({this.otp = "", this.loading = false, this.resending = false, this.countdown = 60, this.success = false, this.error});
  

@override@JsonKey() final  String otp;
@override@JsonKey() final  bool loading;
@override@JsonKey() final  bool resending;
@override@JsonKey() final  int countdown;
@override@JsonKey() final  bool success;
@override final  String? error;

/// Create a copy of OTPFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OTPFormStateCopyWith<_OTPFormState> get copyWith => __$OTPFormStateCopyWithImpl<_OTPFormState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OTPFormState&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.resending, resending) || other.resending == resending)&&(identical(other.countdown, countdown) || other.countdown == countdown)&&(identical(other.success, success) || other.success == success)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,otp,loading,resending,countdown,success,error);

@override
String toString() {
  return 'OTPFormState(otp: $otp, loading: $loading, resending: $resending, countdown: $countdown, success: $success, error: $error)';
}


}

/// @nodoc
abstract mixin class _$OTPFormStateCopyWith<$Res> implements $OTPFormStateCopyWith<$Res> {
  factory _$OTPFormStateCopyWith(_OTPFormState value, $Res Function(_OTPFormState) _then) = __$OTPFormStateCopyWithImpl;
@override @useResult
$Res call({
 String otp, bool loading, bool resending, int countdown, bool success, String? error
});




}
/// @nodoc
class __$OTPFormStateCopyWithImpl<$Res>
    implements _$OTPFormStateCopyWith<$Res> {
  __$OTPFormStateCopyWithImpl(this._self, this._then);

  final _OTPFormState _self;
  final $Res Function(_OTPFormState) _then;

/// Create a copy of OTPFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? otp = null,Object? loading = null,Object? resending = null,Object? countdown = null,Object? success = null,Object? error = freezed,}) {
  return _then(_OTPFormState(
otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,resending: null == resending ? _self.resending : resending // ignore: cast_nullable_to_non_nullable
as bool,countdown: null == countdown ? _self.countdown : countdown // ignore: cast_nullable_to_non_nullable
as int,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
