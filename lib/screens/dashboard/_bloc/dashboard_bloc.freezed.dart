// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DashboardStateTearOff {
  const _$DashboardStateTearOff();

  _InitialDashboardState initial() {
    return const _InitialDashboardState();
  }

  _LoadingDashboardState loading() {
    return const _LoadingDashboardState();
  }

  _EditOdometerDashboardState editOdometer() {
    return const _EditOdometerDashboardState();
  }

  _ViewWeatherDashboardState viewWeather(
      {String? name,
      double? temp,
      int? pressure,
      double? speedWind,
      int? humidity}) {
    return _ViewWeatherDashboardState(
      name: name,
      temp: temp,
      pressure: pressure,
      speedWind: speedWind,
      humidity: humidity,
    );
  }

  _ViewDevicesDashboardState viewDevices(
      {List<UsbDevice>? devices, String? errors}) {
    return _ViewDevicesDashboardState(
      devices: devices,
      errors: errors,
    );
  }

  _DataDashboardState data(
      {double? voltage,
      double? outsideTemperature,
      double? temperatureInCar,
      int? fuelLevel,
      bool? isPowerEngine,
      bool? isEmergencySignal,
      String? errors,
      int? turnoverEngine,
      double? fuelConsumption,
      bool? isOpenDoors,
      bool? isOpenTrunk,
      bool? isOnOffLowBeam,
      bool? isOnOffHighBeam,
      double? temperatureEngine,
      String? status}) {
    return _DataDashboardState(
      voltage: voltage,
      outsideTemperature: outsideTemperature,
      temperatureInCar: temperatureInCar,
      fuelLevel: fuelLevel,
      isPowerEngine: isPowerEngine,
      isEmergencySignal: isEmergencySignal,
      errors: errors,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      status: status,
    );
  }

  _ErrorDashboardState error({String? message}) {
    return _ErrorDashboardState(
      message: message,
    );
  }

  _SuccessDashboardState success({String? message}) {
    return _SuccessDashboardState(
      message: message,
    );
  }
}

/// @nodoc
const $DashboardState = _$DashboardStateTearOff();

/// @nodoc
mixin _$DashboardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() editOdometer,
    required TResult Function(String? name, double? temp, int? pressure,
            double? speedWind, int? humidity)
        viewWeather,
    required TResult Function(List<UsbDevice>? devices, String? errors)
        viewDevices,
    required TResult Function(
            double? voltage,
            double? outsideTemperature,
            double? temperatureInCar,
            int? fuelLevel,
            bool? isPowerEngine,
            bool? isEmergencySignal,
            String? errors,
            int? turnoverEngine,
            double? fuelConsumption,
            bool? isOpenDoors,
            bool? isOpenTrunk,
            bool? isOnOffLowBeam,
            bool? isOnOffHighBeam,
            double? temperatureEngine,
            String? status)
        data,
    required TResult Function(String? message) error,
    required TResult Function(String? message) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? editOdometer,
    TResult Function(String? name, double? temp, int? pressure,
            double? speedWind, int? humidity)?
        viewWeather,
    TResult Function(List<UsbDevice>? devices, String? errors)? viewDevices,
    TResult Function(
            double? voltage,
            double? outsideTemperature,
            double? temperatureInCar,
            int? fuelLevel,
            bool? isPowerEngine,
            bool? isEmergencySignal,
            String? errors,
            int? turnoverEngine,
            double? fuelConsumption,
            bool? isOpenDoors,
            bool? isOpenTrunk,
            bool? isOnOffLowBeam,
            bool? isOnOffHighBeam,
            double? temperatureEngine,
            String? status)?
        data,
    TResult Function(String? message)? error,
    TResult Function(String? message)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDashboardState value) initial,
    required TResult Function(_LoadingDashboardState value) loading,
    required TResult Function(_EditOdometerDashboardState value) editOdometer,
    required TResult Function(_ViewWeatherDashboardState value) viewWeather,
    required TResult Function(_ViewDevicesDashboardState value) viewDevices,
    required TResult Function(_DataDashboardState value) data,
    required TResult Function(_ErrorDashboardState value) error,
    required TResult Function(_SuccessDashboardState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDashboardState value)? initial,
    TResult Function(_LoadingDashboardState value)? loading,
    TResult Function(_EditOdometerDashboardState value)? editOdometer,
    TResult Function(_ViewWeatherDashboardState value)? viewWeather,
    TResult Function(_ViewDevicesDashboardState value)? viewDevices,
    TResult Function(_DataDashboardState value)? data,
    TResult Function(_ErrorDashboardState value)? error,
    TResult Function(_SuccessDashboardState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  final DashboardState _value;
  // ignore: unused_field
  final $Res Function(DashboardState) _then;
}

/// @nodoc
abstract class _$InitialDashboardStateCopyWith<$Res> {
  factory _$InitialDashboardStateCopyWith(_InitialDashboardState value,
          $Res Function(_InitialDashboardState) then) =
      __$InitialDashboardStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialDashboardStateCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$InitialDashboardStateCopyWith<$Res> {
  __$InitialDashboardStateCopyWithImpl(_InitialDashboardState _value,
      $Res Function(_InitialDashboardState) _then)
      : super(_value, (v) => _then(v as _InitialDashboardState));

  @override
  _InitialDashboardState get _value => super._value as _InitialDashboardState;
}

/// @nodoc

class _$_InitialDashboardState
    with DiagnosticableTreeMixin
    implements _InitialDashboardState {
  const _$_InitialDashboardState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DashboardState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialDashboardState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() editOdometer,
    required TResult Function(String? name, double? temp, int? pressure,
            double? speedWind, int? humidity)
        viewWeather,
    required TResult Function(List<UsbDevice>? devices, String? errors)
        viewDevices,
    required TResult Function(
            double? voltage,
            double? outsideTemperature,
            double? temperatureInCar,
            int? fuelLevel,
            bool? isPowerEngine,
            bool? isEmergencySignal,
            String? errors,
            int? turnoverEngine,
            double? fuelConsumption,
            bool? isOpenDoors,
            bool? isOpenTrunk,
            bool? isOnOffLowBeam,
            bool? isOnOffHighBeam,
            double? temperatureEngine,
            String? status)
        data,
    required TResult Function(String? message) error,
    required TResult Function(String? message) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? editOdometer,
    TResult Function(String? name, double? temp, int? pressure,
            double? speedWind, int? humidity)?
        viewWeather,
    TResult Function(List<UsbDevice>? devices, String? errors)? viewDevices,
    TResult Function(
            double? voltage,
            double? outsideTemperature,
            double? temperatureInCar,
            int? fuelLevel,
            bool? isPowerEngine,
            bool? isEmergencySignal,
            String? errors,
            int? turnoverEngine,
            double? fuelConsumption,
            bool? isOpenDoors,
            bool? isOpenTrunk,
            bool? isOnOffLowBeam,
            bool? isOnOffHighBeam,
            double? temperatureEngine,
            String? status)?
        data,
    TResult Function(String? message)? error,
    TResult Function(String? message)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDashboardState value) initial,
    required TResult Function(_LoadingDashboardState value) loading,
    required TResult Function(_EditOdometerDashboardState value) editOdometer,
    required TResult Function(_ViewWeatherDashboardState value) viewWeather,
    required TResult Function(_ViewDevicesDashboardState value) viewDevices,
    required TResult Function(_DataDashboardState value) data,
    required TResult Function(_ErrorDashboardState value) error,
    required TResult Function(_SuccessDashboardState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDashboardState value)? initial,
    TResult Function(_LoadingDashboardState value)? loading,
    TResult Function(_EditOdometerDashboardState value)? editOdometer,
    TResult Function(_ViewWeatherDashboardState value)? viewWeather,
    TResult Function(_ViewDevicesDashboardState value)? viewDevices,
    TResult Function(_DataDashboardState value)? data,
    TResult Function(_ErrorDashboardState value)? error,
    TResult Function(_SuccessDashboardState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialDashboardState implements DashboardState {
  const factory _InitialDashboardState() = _$_InitialDashboardState;
}

/// @nodoc
abstract class _$LoadingDashboardStateCopyWith<$Res> {
  factory _$LoadingDashboardStateCopyWith(_LoadingDashboardState value,
          $Res Function(_LoadingDashboardState) then) =
      __$LoadingDashboardStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingDashboardStateCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$LoadingDashboardStateCopyWith<$Res> {
  __$LoadingDashboardStateCopyWithImpl(_LoadingDashboardState _value,
      $Res Function(_LoadingDashboardState) _then)
      : super(_value, (v) => _then(v as _LoadingDashboardState));

  @override
  _LoadingDashboardState get _value => super._value as _LoadingDashboardState;
}

/// @nodoc

class _$_LoadingDashboardState
    with DiagnosticableTreeMixin
    implements _LoadingDashboardState {
  const _$_LoadingDashboardState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DashboardState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingDashboardState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() editOdometer,
    required TResult Function(String? name, double? temp, int? pressure,
            double? speedWind, int? humidity)
        viewWeather,
    required TResult Function(List<UsbDevice>? devices, String? errors)
        viewDevices,
    required TResult Function(
            double? voltage,
            double? outsideTemperature,
            double? temperatureInCar,
            int? fuelLevel,
            bool? isPowerEngine,
            bool? isEmergencySignal,
            String? errors,
            int? turnoverEngine,
            double? fuelConsumption,
            bool? isOpenDoors,
            bool? isOpenTrunk,
            bool? isOnOffLowBeam,
            bool? isOnOffHighBeam,
            double? temperatureEngine,
            String? status)
        data,
    required TResult Function(String? message) error,
    required TResult Function(String? message) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? editOdometer,
    TResult Function(String? name, double? temp, int? pressure,
            double? speedWind, int? humidity)?
        viewWeather,
    TResult Function(List<UsbDevice>? devices, String? errors)? viewDevices,
    TResult Function(
            double? voltage,
            double? outsideTemperature,
            double? temperatureInCar,
            int? fuelLevel,
            bool? isPowerEngine,
            bool? isEmergencySignal,
            String? errors,
            int? turnoverEngine,
            double? fuelConsumption,
            bool? isOpenDoors,
            bool? isOpenTrunk,
            bool? isOnOffLowBeam,
            bool? isOnOffHighBeam,
            double? temperatureEngine,
            String? status)?
        data,
    TResult Function(String? message)? error,
    TResult Function(String? message)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDashboardState value) initial,
    required TResult Function(_LoadingDashboardState value) loading,
    required TResult Function(_EditOdometerDashboardState value) editOdometer,
    required TResult Function(_ViewWeatherDashboardState value) viewWeather,
    required TResult Function(_ViewDevicesDashboardState value) viewDevices,
    required TResult Function(_DataDashboardState value) data,
    required TResult Function(_ErrorDashboardState value) error,
    required TResult Function(_SuccessDashboardState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDashboardState value)? initial,
    TResult Function(_LoadingDashboardState value)? loading,
    TResult Function(_EditOdometerDashboardState value)? editOdometer,
    TResult Function(_ViewWeatherDashboardState value)? viewWeather,
    TResult Function(_ViewDevicesDashboardState value)? viewDevices,
    TResult Function(_DataDashboardState value)? data,
    TResult Function(_ErrorDashboardState value)? error,
    TResult Function(_SuccessDashboardState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingDashboardState implements DashboardState {
  const factory _LoadingDashboardState() = _$_LoadingDashboardState;
}

/// @nodoc
abstract class _$EditOdometerDashboardStateCopyWith<$Res> {
  factory _$EditOdometerDashboardStateCopyWith(
          _EditOdometerDashboardState value,
          $Res Function(_EditOdometerDashboardState) then) =
      __$EditOdometerDashboardStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$EditOdometerDashboardStateCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$EditOdometerDashboardStateCopyWith<$Res> {
  __$EditOdometerDashboardStateCopyWithImpl(_EditOdometerDashboardState _value,
      $Res Function(_EditOdometerDashboardState) _then)
      : super(_value, (v) => _then(v as _EditOdometerDashboardState));

  @override
  _EditOdometerDashboardState get _value =>
      super._value as _EditOdometerDashboardState;
}

/// @nodoc

class _$_EditOdometerDashboardState
    with DiagnosticableTreeMixin
    implements _EditOdometerDashboardState {
  const _$_EditOdometerDashboardState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardState.editOdometer()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DashboardState.editOdometer'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EditOdometerDashboardState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() editOdometer,
    required TResult Function(String? name, double? temp, int? pressure,
            double? speedWind, int? humidity)
        viewWeather,
    required TResult Function(List<UsbDevice>? devices, String? errors)
        viewDevices,
    required TResult Function(
            double? voltage,
            double? outsideTemperature,
            double? temperatureInCar,
            int? fuelLevel,
            bool? isPowerEngine,
            bool? isEmergencySignal,
            String? errors,
            int? turnoverEngine,
            double? fuelConsumption,
            bool? isOpenDoors,
            bool? isOpenTrunk,
            bool? isOnOffLowBeam,
            bool? isOnOffHighBeam,
            double? temperatureEngine,
            String? status)
        data,
    required TResult Function(String? message) error,
    required TResult Function(String? message) success,
  }) {
    return editOdometer();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? editOdometer,
    TResult Function(String? name, double? temp, int? pressure,
            double? speedWind, int? humidity)?
        viewWeather,
    TResult Function(List<UsbDevice>? devices, String? errors)? viewDevices,
    TResult Function(
            double? voltage,
            double? outsideTemperature,
            double? temperatureInCar,
            int? fuelLevel,
            bool? isPowerEngine,
            bool? isEmergencySignal,
            String? errors,
            int? turnoverEngine,
            double? fuelConsumption,
            bool? isOpenDoors,
            bool? isOpenTrunk,
            bool? isOnOffLowBeam,
            bool? isOnOffHighBeam,
            double? temperatureEngine,
            String? status)?
        data,
    TResult Function(String? message)? error,
    TResult Function(String? message)? success,
    required TResult orElse(),
  }) {
    if (editOdometer != null) {
      return editOdometer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDashboardState value) initial,
    required TResult Function(_LoadingDashboardState value) loading,
    required TResult Function(_EditOdometerDashboardState value) editOdometer,
    required TResult Function(_ViewWeatherDashboardState value) viewWeather,
    required TResult Function(_ViewDevicesDashboardState value) viewDevices,
    required TResult Function(_DataDashboardState value) data,
    required TResult Function(_ErrorDashboardState value) error,
    required TResult Function(_SuccessDashboardState value) success,
  }) {
    return editOdometer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDashboardState value)? initial,
    TResult Function(_LoadingDashboardState value)? loading,
    TResult Function(_EditOdometerDashboardState value)? editOdometer,
    TResult Function(_ViewWeatherDashboardState value)? viewWeather,
    TResult Function(_ViewDevicesDashboardState value)? viewDevices,
    TResult Function(_DataDashboardState value)? data,
    TResult Function(_ErrorDashboardState value)? error,
    TResult Function(_SuccessDashboardState value)? success,
    required TResult orElse(),
  }) {
    if (editOdometer != null) {
      return editOdometer(this);
    }
    return orElse();
  }
}

abstract class _EditOdometerDashboardState implements DashboardState {
  const factory _EditOdometerDashboardState() = _$_EditOdometerDashboardState;
}

/// @nodoc
abstract class _$ViewWeatherDashboardStateCopyWith<$Res> {
  factory _$ViewWeatherDashboardStateCopyWith(_ViewWeatherDashboardState value,
          $Res Function(_ViewWeatherDashboardState) then) =
      __$ViewWeatherDashboardStateCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      double? temp,
      int? pressure,
      double? speedWind,
      int? humidity});
}

/// @nodoc
class __$ViewWeatherDashboardStateCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$ViewWeatherDashboardStateCopyWith<$Res> {
  __$ViewWeatherDashboardStateCopyWithImpl(_ViewWeatherDashboardState _value,
      $Res Function(_ViewWeatherDashboardState) _then)
      : super(_value, (v) => _then(v as _ViewWeatherDashboardState));

  @override
  _ViewWeatherDashboardState get _value =>
      super._value as _ViewWeatherDashboardState;

  @override
  $Res call({
    Object? name = freezed,
    Object? temp = freezed,
    Object? pressure = freezed,
    Object? speedWind = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_ViewWeatherDashboardState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      speedWind: speedWind == freezed
          ? _value.speedWind
          : speedWind // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_ViewWeatherDashboardState
    with DiagnosticableTreeMixin
    implements _ViewWeatherDashboardState {
  const _$_ViewWeatherDashboardState(
      {this.name, this.temp, this.pressure, this.speedWind, this.humidity});

  @override
  final String? name;
  @override
  final double? temp;
  @override
  final int? pressure;
  @override
  final double? speedWind;
  @override
  final int? humidity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardState.viewWeather(name: $name, temp: $temp, pressure: $pressure, speedWind: $speedWind, humidity: $humidity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DashboardState.viewWeather'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('temp', temp))
      ..add(DiagnosticsProperty('pressure', pressure))
      ..add(DiagnosticsProperty('speedWind', speedWind))
      ..add(DiagnosticsProperty('humidity', humidity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewWeatherDashboardState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.temp, temp) ||
                const DeepCollectionEquality().equals(other.temp, temp)) &&
            (identical(other.pressure, pressure) ||
                const DeepCollectionEquality()
                    .equals(other.pressure, pressure)) &&
            (identical(other.speedWind, speedWind) ||
                const DeepCollectionEquality()
                    .equals(other.speedWind, speedWind)) &&
            (identical(other.humidity, humidity) ||
                const DeepCollectionEquality()
                    .equals(other.humidity, humidity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(temp) ^
      const DeepCollectionEquality().hash(pressure) ^
      const DeepCollectionEquality().hash(speedWind) ^
      const DeepCollectionEquality().hash(humidity);

  @JsonKey(ignore: true)
  @override
  _$ViewWeatherDashboardStateCopyWith<_ViewWeatherDashboardState>
      get copyWith =>
          __$ViewWeatherDashboardStateCopyWithImpl<_ViewWeatherDashboardState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() editOdometer,
    required TResult Function(String? name, double? temp, int? pressure,
            double? speedWind, int? humidity)
        viewWeather,
    required TResult Function(List<UsbDevice>? devices, String? errors)
        viewDevices,
    required TResult Function(
            double? voltage,
            double? outsideTemperature,
            double? temperatureInCar,
            int? fuelLevel,
            bool? isPowerEngine,
            bool? isEmergencySignal,
            String? errors,
            int? turnoverEngine,
            double? fuelConsumption,
            bool? isOpenDoors,
            bool? isOpenTrunk,
            bool? isOnOffLowBeam,
            bool? isOnOffHighBeam,
            double? temperatureEngine,
            String? status)
        data,
    required TResult Function(String? message) error,
    required TResult Function(String? message) success,
  }) {
    return viewWeather(name, temp, pressure, speedWind, humidity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? editOdometer,
    TResult Function(String? name, double? temp, int? pressure,
            double? speedWind, int? humidity)?
        viewWeather,
    TResult Function(List<UsbDevice>? devices, String? errors)? viewDevices,
    TResult Function(
            double? voltage,
            double? outsideTemperature,
            double? temperatureInCar,
            int? fuelLevel,
            bool? isPowerEngine,
            bool? isEmergencySignal,
            String? errors,
            int? turnoverEngine,
            double? fuelConsumption,
            bool? isOpenDoors,
            bool? isOpenTrunk,
            bool? isOnOffLowBeam,
            bool? isOnOffHighBeam,
            double? temperatureEngine,
            String? status)?
        data,
    TResult Function(String? message)? error,
    TResult Function(String? message)? success,
    required TResult orElse(),
  }) {
    if (viewWeather != null) {
      return viewWeather(name, temp, pressure, speedWind, humidity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDashboardState value) initial,
    required TResult Function(_LoadingDashboardState value) loading,
    required TResult Function(_EditOdometerDashboardState value) editOdometer,
    required TResult Function(_ViewWeatherDashboardState value) viewWeather,
    required TResult Function(_ViewDevicesDashboardState value) viewDevices,
    required TResult Function(_DataDashboardState value) data,
    required TResult Function(_ErrorDashboardState value) error,
    required TResult Function(_SuccessDashboardState value) success,
  }) {
    return viewWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDashboardState value)? initial,
    TResult Function(_LoadingDashboardState value)? loading,
    TResult Function(_EditOdometerDashboardState value)? editOdometer,
    TResult Function(_ViewWeatherDashboardState value)? viewWeather,
    TResult Function(_ViewDevicesDashboardState value)? viewDevices,
    TResult Function(_DataDashboardState value)? data,
    TResult Function(_ErrorDashboardState value)? error,
    TResult Function(_SuccessDashboardState value)? success,
    required TResult orElse(),
  }) {
    if (viewWeather != null) {
      return viewWeather(this);
    }
    return orElse();
  }
}

abstract class _ViewWeatherDashboardState implements DashboardState {
  const factory _ViewWeatherDashboardState(
      {String? name,
      double? temp,
      int? pressure,
      double? speedWind,
      int? humidity}) = _$_ViewWeatherDashboardState;

  String? get name => throw _privateConstructorUsedError;
  double? get temp => throw _privateConstructorUsedError;
  int? get pressure => throw _privateConstructorUsedError;
  double? get speedWind => throw _privateConstructorUsedError;
  int? get humidity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ViewWeatherDashboardStateCopyWith<_ViewWeatherDashboardState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ViewDevicesDashboardStateCopyWith<$Res> {
  factory _$ViewDevicesDashboardStateCopyWith(_ViewDevicesDashboardState value,
          $Res Function(_ViewDevicesDashboardState) then) =
      __$ViewDevicesDashboardStateCopyWithImpl<$Res>;
  $Res call({List<UsbDevice>? devices, String? errors});
}

/// @nodoc
class __$ViewDevicesDashboardStateCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$ViewDevicesDashboardStateCopyWith<$Res> {
  __$ViewDevicesDashboardStateCopyWithImpl(_ViewDevicesDashboardState _value,
      $Res Function(_ViewDevicesDashboardState) _then)
      : super(_value, (v) => _then(v as _ViewDevicesDashboardState));

  @override
  _ViewDevicesDashboardState get _value =>
      super._value as _ViewDevicesDashboardState;

  @override
  $Res call({
    Object? devices = freezed,
    Object? errors = freezed,
  }) {
    return _then(_ViewDevicesDashboardState(
      devices: devices == freezed
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<UsbDevice>?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ViewDevicesDashboardState
    with DiagnosticableTreeMixin
    implements _ViewDevicesDashboardState {
  const _$_ViewDevicesDashboardState({this.devices, this.errors});

  @override
  final List<UsbDevice>? devices;
  @override
  final String? errors;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardState.viewDevices(devices: $devices, errors: $errors)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DashboardState.viewDevices'))
      ..add(DiagnosticsProperty('devices', devices))
      ..add(DiagnosticsProperty('errors', errors));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewDevicesDashboardState &&
            (identical(other.devices, devices) ||
                const DeepCollectionEquality()
                    .equals(other.devices, devices)) &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(devices) ^
      const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  _$ViewDevicesDashboardStateCopyWith<_ViewDevicesDashboardState>
      get copyWith =>
          __$ViewDevicesDashboardStateCopyWithImpl<_ViewDevicesDashboardState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() editOdometer,
    required TResult Function(String? name, double? temp, int? pressure,
            double? speedWind, int? humidity)
        viewWeather,
    required TResult Function(List<UsbDevice>? devices, String? errors)
        viewDevices,
    required TResult Function(
            double? voltage,
            double? outsideTemperature,
            double? temperatureInCar,
            int? fuelLevel,
            bool? isPowerEngine,
            bool? isEmergencySignal,
            String? errors,
            int? turnoverEngine,
            double? fuelConsumption,
            bool? isOpenDoors,
            bool? isOpenTrunk,
            bool? isOnOffLowBeam,
            bool? isOnOffHighBeam,
            double? temperatureEngine,
            String? status)
        data,
    required TResult Function(String? message) error,
    required TResult Function(String? message) success,
  }) {
    return viewDevices(devices, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? editOdometer,
    TResult Function(String? name, double? temp, int? pressure,
            double? speedWind, int? humidity)?
        viewWeather,
    TResult Function(List<UsbDevice>? devices, String? errors)? viewDevices,
    TResult Function(
            double? voltage,
            double? outsideTemperature,
            double? temperatureInCar,
            int? fuelLevel,
            bool? isPowerEngine,
            bool? isEmergencySignal,
            String? errors,
            int? turnoverEngine,
            double? fuelConsumption,
            bool? isOpenDoors,
            bool? isOpenTrunk,
            bool? isOnOffLowBeam,
            bool? isOnOffHighBeam,
            double? temperatureEngine,
            String? status)?
        data,
    TResult Function(String? message)? error,
    TResult Function(String? message)? success,
    required TResult orElse(),
  }) {
    if (viewDevices != null) {
      return viewDevices(devices, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDashboardState value) initial,
    required TResult Function(_LoadingDashboardState value) loading,
    required TResult Function(_EditOdometerDashboardState value) editOdometer,
    required TResult Function(_ViewWeatherDashboardState value) viewWeather,
    required TResult Function(_ViewDevicesDashboardState value) viewDevices,
    required TResult Function(_DataDashboardState value) data,
    required TResult Function(_ErrorDashboardState value) error,
    required TResult Function(_SuccessDashboardState value) success,
  }) {
    return viewDevices(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDashboardState value)? initial,
    TResult Function(_LoadingDashboardState value)? loading,
    TResult Function(_EditOdometerDashboardState value)? editOdometer,
    TResult Function(_ViewWeatherDashboardState value)? viewWeather,
    TResult Function(_ViewDevicesDashboardState value)? viewDevices,
    TResult Function(_DataDashboardState value)? data,
    TResult Function(_ErrorDashboardState value)? error,
    TResult Function(_SuccessDashboardState value)? success,
    required TResult orElse(),
  }) {
    if (viewDevices != null) {
      return viewDevices(this);
    }
    return orElse();
  }
}

abstract class _ViewDevicesDashboardState implements DashboardState {
  const factory _ViewDevicesDashboardState(
      {List<UsbDevice>? devices,
      String? errors}) = _$_ViewDevicesDashboardState;

  List<UsbDevice>? get devices => throw _privateConstructorUsedError;
  String? get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ViewDevicesDashboardStateCopyWith<_ViewDevicesDashboardState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DataDashboardStateCopyWith<$Res> {
  factory _$DataDashboardStateCopyWith(
          _DataDashboardState value, $Res Function(_DataDashboardState) then) =
      __$DataDashboardStateCopyWithImpl<$Res>;
  $Res call(
      {double? voltage,
      double? outsideTemperature,
      double? temperatureInCar,
      int? fuelLevel,
      bool? isPowerEngine,
      bool? isEmergencySignal,
      String? errors,
      int? turnoverEngine,
      double? fuelConsumption,
      bool? isOpenDoors,
      bool? isOpenTrunk,
      bool? isOnOffLowBeam,
      bool? isOnOffHighBeam,
      double? temperatureEngine,
      String? status});
}

/// @nodoc
class __$DataDashboardStateCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$DataDashboardStateCopyWith<$Res> {
  __$DataDashboardStateCopyWithImpl(
      _DataDashboardState _value, $Res Function(_DataDashboardState) _then)
      : super(_value, (v) => _then(v as _DataDashboardState));

  @override
  _DataDashboardState get _value => super._value as _DataDashboardState;

  @override
  $Res call({
    Object? voltage = freezed,
    Object? outsideTemperature = freezed,
    Object? temperatureInCar = freezed,
    Object? fuelLevel = freezed,
    Object? isPowerEngine = freezed,
    Object? isEmergencySignal = freezed,
    Object? errors = freezed,
    Object? turnoverEngine = freezed,
    Object? fuelConsumption = freezed,
    Object? isOpenDoors = freezed,
    Object? isOpenTrunk = freezed,
    Object? isOnOffLowBeam = freezed,
    Object? isOnOffHighBeam = freezed,
    Object? temperatureEngine = freezed,
    Object? status = freezed,
  }) {
    return _then(_DataDashboardState(
      voltage: voltage == freezed
          ? _value.voltage
          : voltage // ignore: cast_nullable_to_non_nullable
              as double?,
      outsideTemperature: outsideTemperature == freezed
          ? _value.outsideTemperature
          : outsideTemperature // ignore: cast_nullable_to_non_nullable
              as double?,
      temperatureInCar: temperatureInCar == freezed
          ? _value.temperatureInCar
          : temperatureInCar // ignore: cast_nullable_to_non_nullable
              as double?,
      fuelLevel: fuelLevel == freezed
          ? _value.fuelLevel
          : fuelLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      isPowerEngine: isPowerEngine == freezed
          ? _value.isPowerEngine
          : isPowerEngine // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEmergencySignal: isEmergencySignal == freezed
          ? _value.isEmergencySignal
          : isEmergencySignal // ignore: cast_nullable_to_non_nullable
              as bool?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as String?,
      turnoverEngine: turnoverEngine == freezed
          ? _value.turnoverEngine
          : turnoverEngine // ignore: cast_nullable_to_non_nullable
              as int?,
      fuelConsumption: fuelConsumption == freezed
          ? _value.fuelConsumption
          : fuelConsumption // ignore: cast_nullable_to_non_nullable
              as double?,
      isOpenDoors: isOpenDoors == freezed
          ? _value.isOpenDoors
          : isOpenDoors // ignore: cast_nullable_to_non_nullable
              as bool?,
      isOpenTrunk: isOpenTrunk == freezed
          ? _value.isOpenTrunk
          : isOpenTrunk // ignore: cast_nullable_to_non_nullable
              as bool?,
      isOnOffLowBeam: isOnOffLowBeam == freezed
          ? _value.isOnOffLowBeam
          : isOnOffLowBeam // ignore: cast_nullable_to_non_nullable
              as bool?,
      isOnOffHighBeam: isOnOffHighBeam == freezed
          ? _value.isOnOffHighBeam
          : isOnOffHighBeam // ignore: cast_nullable_to_non_nullable
              as bool?,
      temperatureEngine: temperatureEngine == freezed
          ? _value.temperatureEngine
          : temperatureEngine // ignore: cast_nullable_to_non_nullable
              as double?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DataDashboardState
    with DiagnosticableTreeMixin
    implements _DataDashboardState {
  const _$_DataDashboardState(
      {this.voltage,
      this.outsideTemperature,
      this.temperatureInCar,
      this.fuelLevel,
      this.isPowerEngine,
      this.isEmergencySignal,
      this.errors,
      this.turnoverEngine,
      this.fuelConsumption,
      this.isOpenDoors,
      this.isOpenTrunk,
      this.isOnOffLowBeam,
      this.isOnOffHighBeam,
      this.temperatureEngine,
      this.status});

  @override
  final double? voltage;
  @override
  final double? outsideTemperature;
  @override
  final double? temperatureInCar;
  @override
  final int? fuelLevel;
  @override
  final bool? isPowerEngine;
  @override
  final bool? isEmergencySignal;
  @override
  final String? errors;
  @override
  final int? turnoverEngine;
  @override
  final double? fuelConsumption;
  @override
  final bool? isOpenDoors;
  @override
  final bool? isOpenTrunk;
  @override
  final bool? isOnOffLowBeam;
  @override
  final bool? isOnOffHighBeam;
  @override
  final double? temperatureEngine;
  @override
  final String? status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardState.data(voltage: $voltage, outsideTemperature: $outsideTemperature, temperatureInCar: $temperatureInCar, fuelLevel: $fuelLevel, isPowerEngine: $isPowerEngine, isEmergencySignal: $isEmergencySignal, errors: $errors, turnoverEngine: $turnoverEngine, fuelConsumption: $fuelConsumption, isOpenDoors: $isOpenDoors, isOpenTrunk: $isOpenTrunk, isOnOffLowBeam: $isOnOffLowBeam, isOnOffHighBeam: $isOnOffHighBeam, temperatureEngine: $temperatureEngine, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DashboardState.data'))
      ..add(DiagnosticsProperty('voltage', voltage))
      ..add(DiagnosticsProperty('outsideTemperature', outsideTemperature))
      ..add(DiagnosticsProperty('temperatureInCar', temperatureInCar))
      ..add(DiagnosticsProperty('fuelLevel', fuelLevel))
      ..add(DiagnosticsProperty('isPowerEngine', isPowerEngine))
      ..add(DiagnosticsProperty('isEmergencySignal', isEmergencySignal))
      ..add(DiagnosticsProperty('errors', errors))
      ..add(DiagnosticsProperty('turnoverEngine', turnoverEngine))
      ..add(DiagnosticsProperty('fuelConsumption', fuelConsumption))
      ..add(DiagnosticsProperty('isOpenDoors', isOpenDoors))
      ..add(DiagnosticsProperty('isOpenTrunk', isOpenTrunk))
      ..add(DiagnosticsProperty('isOnOffLowBeam', isOnOffLowBeam))
      ..add(DiagnosticsProperty('isOnOffHighBeam', isOnOffHighBeam))
      ..add(DiagnosticsProperty('temperatureEngine', temperatureEngine))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataDashboardState &&
            (identical(other.voltage, voltage) ||
                const DeepCollectionEquality()
                    .equals(other.voltage, voltage)) &&
            (identical(other.outsideTemperature, outsideTemperature) ||
                const DeepCollectionEquality()
                    .equals(other.outsideTemperature, outsideTemperature)) &&
            (identical(other.temperatureInCar, temperatureInCar) ||
                const DeepCollectionEquality()
                    .equals(other.temperatureInCar, temperatureInCar)) &&
            (identical(other.fuelLevel, fuelLevel) ||
                const DeepCollectionEquality()
                    .equals(other.fuelLevel, fuelLevel)) &&
            (identical(other.isPowerEngine, isPowerEngine) ||
                const DeepCollectionEquality()
                    .equals(other.isPowerEngine, isPowerEngine)) &&
            (identical(other.isEmergencySignal, isEmergencySignal) ||
                const DeepCollectionEquality()
                    .equals(other.isEmergencySignal, isEmergencySignal)) &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)) &&
            (identical(other.turnoverEngine, turnoverEngine) ||
                const DeepCollectionEquality()
                    .equals(other.turnoverEngine, turnoverEngine)) &&
            (identical(other.fuelConsumption, fuelConsumption) ||
                const DeepCollectionEquality()
                    .equals(other.fuelConsumption, fuelConsumption)) &&
            (identical(other.isOpenDoors, isOpenDoors) ||
                const DeepCollectionEquality()
                    .equals(other.isOpenDoors, isOpenDoors)) &&
            (identical(other.isOpenTrunk, isOpenTrunk) ||
                const DeepCollectionEquality()
                    .equals(other.isOpenTrunk, isOpenTrunk)) &&
            (identical(other.isOnOffLowBeam, isOnOffLowBeam) ||
                const DeepCollectionEquality()
                    .equals(other.isOnOffLowBeam, isOnOffLowBeam)) &&
            (identical(other.isOnOffHighBeam, isOnOffHighBeam) ||
                const DeepCollectionEquality()
                    .equals(other.isOnOffHighBeam, isOnOffHighBeam)) &&
            (identical(other.temperatureEngine, temperatureEngine) ||
                const DeepCollectionEquality()
                    .equals(other.temperatureEngine, temperatureEngine)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(voltage) ^
      const DeepCollectionEquality().hash(outsideTemperature) ^
      const DeepCollectionEquality().hash(temperatureInCar) ^
      const DeepCollectionEquality().hash(fuelLevel) ^
      const DeepCollectionEquality().hash(isPowerEngine) ^
      const DeepCollectionEquality().hash(isEmergencySignal) ^
      const DeepCollectionEquality().hash(errors) ^
      const DeepCollectionEquality().hash(turnoverEngine) ^
      const DeepCollectionEquality().hash(fuelConsumption) ^
      const DeepCollectionEquality().hash(isOpenDoors) ^
      const DeepCollectionEquality().hash(isOpenTrunk) ^
      const DeepCollectionEquality().hash(isOnOffLowBeam) ^
      const DeepCollectionEquality().hash(isOnOffHighBeam) ^
      const DeepCollectionEquality().hash(temperatureEngine) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$DataDashboardStateCopyWith<_DataDashboardState> get copyWith =>
      __$DataDashboardStateCopyWithImpl<_DataDashboardState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() editOdometer,
    required TResult Function(String? name, double? temp, int? pressure,
            double? speedWind, int? humidity)
        viewWeather,
    required TResult Function(List<UsbDevice>? devices, String? errors)
        viewDevices,
    required TResult Function(
            double? voltage,
            double? outsideTemperature,
            double? temperatureInCar,
            int? fuelLevel,
            bool? isPowerEngine,
            bool? isEmergencySignal,
            String? errors,
            int? turnoverEngine,
            double? fuelConsumption,
            bool? isOpenDoors,
            bool? isOpenTrunk,
            bool? isOnOffLowBeam,
            bool? isOnOffHighBeam,
            double? temperatureEngine,
            String? status)
        data,
    required TResult Function(String? message) error,
    required TResult Function(String? message) success,
  }) {
    return data(
        voltage,
        outsideTemperature,
        temperatureInCar,
        fuelLevel,
        isPowerEngine,
        isEmergencySignal,
        errors,
        turnoverEngine,
        fuelConsumption,
        isOpenDoors,
        isOpenTrunk,
        isOnOffLowBeam,
        isOnOffHighBeam,
        temperatureEngine,
        status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? editOdometer,
    TResult Function(String? name, double? temp, int? pressure,
            double? speedWind, int? humidity)?
        viewWeather,
    TResult Function(List<UsbDevice>? devices, String? errors)? viewDevices,
    TResult Function(
            double? voltage,
            double? outsideTemperature,
            double? temperatureInCar,
            int? fuelLevel,
            bool? isPowerEngine,
            bool? isEmergencySignal,
            String? errors,
            int? turnoverEngine,
            double? fuelConsumption,
            bool? isOpenDoors,
            bool? isOpenTrunk,
            bool? isOnOffLowBeam,
            bool? isOnOffHighBeam,
            double? temperatureEngine,
            String? status)?
        data,
    TResult Function(String? message)? error,
    TResult Function(String? message)? success,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(
          voltage,
          outsideTemperature,
          temperatureInCar,
          fuelLevel,
          isPowerEngine,
          isEmergencySignal,
          errors,
          turnoverEngine,
          fuelConsumption,
          isOpenDoors,
          isOpenTrunk,
          isOnOffLowBeam,
          isOnOffHighBeam,
          temperatureEngine,
          status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDashboardState value) initial,
    required TResult Function(_LoadingDashboardState value) loading,
    required TResult Function(_EditOdometerDashboardState value) editOdometer,
    required TResult Function(_ViewWeatherDashboardState value) viewWeather,
    required TResult Function(_ViewDevicesDashboardState value) viewDevices,
    required TResult Function(_DataDashboardState value) data,
    required TResult Function(_ErrorDashboardState value) error,
    required TResult Function(_SuccessDashboardState value) success,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDashboardState value)? initial,
    TResult Function(_LoadingDashboardState value)? loading,
    TResult Function(_EditOdometerDashboardState value)? editOdometer,
    TResult Function(_ViewWeatherDashboardState value)? viewWeather,
    TResult Function(_ViewDevicesDashboardState value)? viewDevices,
    TResult Function(_DataDashboardState value)? data,
    TResult Function(_ErrorDashboardState value)? error,
    TResult Function(_SuccessDashboardState value)? success,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataDashboardState implements DashboardState {
  const factory _DataDashboardState(
      {double? voltage,
      double? outsideTemperature,
      double? temperatureInCar,
      int? fuelLevel,
      bool? isPowerEngine,
      bool? isEmergencySignal,
      String? errors,
      int? turnoverEngine,
      double? fuelConsumption,
      bool? isOpenDoors,
      bool? isOpenTrunk,
      bool? isOnOffLowBeam,
      bool? isOnOffHighBeam,
      double? temperatureEngine,
      String? status}) = _$_DataDashboardState;

  double? get voltage => throw _privateConstructorUsedError;
  double? get outsideTemperature => throw _privateConstructorUsedError;
  double? get temperatureInCar => throw _privateConstructorUsedError;
  int? get fuelLevel => throw _privateConstructorUsedError;
  bool? get isPowerEngine => throw _privateConstructorUsedError;
  bool? get isEmergencySignal => throw _privateConstructorUsedError;
  String? get errors => throw _privateConstructorUsedError;
  int? get turnoverEngine => throw _privateConstructorUsedError;
  double? get fuelConsumption => throw _privateConstructorUsedError;
  bool? get isOpenDoors => throw _privateConstructorUsedError;
  bool? get isOpenTrunk => throw _privateConstructorUsedError;
  bool? get isOnOffLowBeam => throw _privateConstructorUsedError;
  bool? get isOnOffHighBeam => throw _privateConstructorUsedError;
  double? get temperatureEngine => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataDashboardStateCopyWith<_DataDashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorDashboardStateCopyWith<$Res> {
  factory _$ErrorDashboardStateCopyWith(_ErrorDashboardState value,
          $Res Function(_ErrorDashboardState) then) =
      __$ErrorDashboardStateCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$ErrorDashboardStateCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$ErrorDashboardStateCopyWith<$Res> {
  __$ErrorDashboardStateCopyWithImpl(
      _ErrorDashboardState _value, $Res Function(_ErrorDashboardState) _then)
      : super(_value, (v) => _then(v as _ErrorDashboardState));

  @override
  _ErrorDashboardState get _value => super._value as _ErrorDashboardState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ErrorDashboardState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ErrorDashboardState
    with DiagnosticableTreeMixin
    implements _ErrorDashboardState {
  const _$_ErrorDashboardState({this.message});

  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DashboardState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorDashboardState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ErrorDashboardStateCopyWith<_ErrorDashboardState> get copyWith =>
      __$ErrorDashboardStateCopyWithImpl<_ErrorDashboardState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() editOdometer,
    required TResult Function(String? name, double? temp, int? pressure,
            double? speedWind, int? humidity)
        viewWeather,
    required TResult Function(List<UsbDevice>? devices, String? errors)
        viewDevices,
    required TResult Function(
            double? voltage,
            double? outsideTemperature,
            double? temperatureInCar,
            int? fuelLevel,
            bool? isPowerEngine,
            bool? isEmergencySignal,
            String? errors,
            int? turnoverEngine,
            double? fuelConsumption,
            bool? isOpenDoors,
            bool? isOpenTrunk,
            bool? isOnOffLowBeam,
            bool? isOnOffHighBeam,
            double? temperatureEngine,
            String? status)
        data,
    required TResult Function(String? message) error,
    required TResult Function(String? message) success,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? editOdometer,
    TResult Function(String? name, double? temp, int? pressure,
            double? speedWind, int? humidity)?
        viewWeather,
    TResult Function(List<UsbDevice>? devices, String? errors)? viewDevices,
    TResult Function(
            double? voltage,
            double? outsideTemperature,
            double? temperatureInCar,
            int? fuelLevel,
            bool? isPowerEngine,
            bool? isEmergencySignal,
            String? errors,
            int? turnoverEngine,
            double? fuelConsumption,
            bool? isOpenDoors,
            bool? isOpenTrunk,
            bool? isOnOffLowBeam,
            bool? isOnOffHighBeam,
            double? temperatureEngine,
            String? status)?
        data,
    TResult Function(String? message)? error,
    TResult Function(String? message)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDashboardState value) initial,
    required TResult Function(_LoadingDashboardState value) loading,
    required TResult Function(_EditOdometerDashboardState value) editOdometer,
    required TResult Function(_ViewWeatherDashboardState value) viewWeather,
    required TResult Function(_ViewDevicesDashboardState value) viewDevices,
    required TResult Function(_DataDashboardState value) data,
    required TResult Function(_ErrorDashboardState value) error,
    required TResult Function(_SuccessDashboardState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDashboardState value)? initial,
    TResult Function(_LoadingDashboardState value)? loading,
    TResult Function(_EditOdometerDashboardState value)? editOdometer,
    TResult Function(_ViewWeatherDashboardState value)? viewWeather,
    TResult Function(_ViewDevicesDashboardState value)? viewDevices,
    TResult Function(_DataDashboardState value)? data,
    TResult Function(_ErrorDashboardState value)? error,
    TResult Function(_SuccessDashboardState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorDashboardState implements DashboardState {
  const factory _ErrorDashboardState({String? message}) =
      _$_ErrorDashboardState;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorDashboardStateCopyWith<_ErrorDashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SuccessDashboardStateCopyWith<$Res> {
  factory _$SuccessDashboardStateCopyWith(_SuccessDashboardState value,
          $Res Function(_SuccessDashboardState) then) =
      __$SuccessDashboardStateCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$SuccessDashboardStateCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$SuccessDashboardStateCopyWith<$Res> {
  __$SuccessDashboardStateCopyWithImpl(_SuccessDashboardState _value,
      $Res Function(_SuccessDashboardState) _then)
      : super(_value, (v) => _then(v as _SuccessDashboardState));

  @override
  _SuccessDashboardState get _value => super._value as _SuccessDashboardState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_SuccessDashboardState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SuccessDashboardState
    with DiagnosticableTreeMixin
    implements _SuccessDashboardState {
  const _$_SuccessDashboardState({this.message});

  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardState.success(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DashboardState.success'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SuccessDashboardState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$SuccessDashboardStateCopyWith<_SuccessDashboardState> get copyWith =>
      __$SuccessDashboardStateCopyWithImpl<_SuccessDashboardState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() editOdometer,
    required TResult Function(String? name, double? temp, int? pressure,
            double? speedWind, int? humidity)
        viewWeather,
    required TResult Function(List<UsbDevice>? devices, String? errors)
        viewDevices,
    required TResult Function(
            double? voltage,
            double? outsideTemperature,
            double? temperatureInCar,
            int? fuelLevel,
            bool? isPowerEngine,
            bool? isEmergencySignal,
            String? errors,
            int? turnoverEngine,
            double? fuelConsumption,
            bool? isOpenDoors,
            bool? isOpenTrunk,
            bool? isOnOffLowBeam,
            bool? isOnOffHighBeam,
            double? temperatureEngine,
            String? status)
        data,
    required TResult Function(String? message) error,
    required TResult Function(String? message) success,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? editOdometer,
    TResult Function(String? name, double? temp, int? pressure,
            double? speedWind, int? humidity)?
        viewWeather,
    TResult Function(List<UsbDevice>? devices, String? errors)? viewDevices,
    TResult Function(
            double? voltage,
            double? outsideTemperature,
            double? temperatureInCar,
            int? fuelLevel,
            bool? isPowerEngine,
            bool? isEmergencySignal,
            String? errors,
            int? turnoverEngine,
            double? fuelConsumption,
            bool? isOpenDoors,
            bool? isOpenTrunk,
            bool? isOnOffLowBeam,
            bool? isOnOffHighBeam,
            double? temperatureEngine,
            String? status)?
        data,
    TResult Function(String? message)? error,
    TResult Function(String? message)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDashboardState value) initial,
    required TResult Function(_LoadingDashboardState value) loading,
    required TResult Function(_EditOdometerDashboardState value) editOdometer,
    required TResult Function(_ViewWeatherDashboardState value) viewWeather,
    required TResult Function(_ViewDevicesDashboardState value) viewDevices,
    required TResult Function(_DataDashboardState value) data,
    required TResult Function(_ErrorDashboardState value) error,
    required TResult Function(_SuccessDashboardState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDashboardState value)? initial,
    TResult Function(_LoadingDashboardState value)? loading,
    TResult Function(_EditOdometerDashboardState value)? editOdometer,
    TResult Function(_ViewWeatherDashboardState value)? viewWeather,
    TResult Function(_ViewDevicesDashboardState value)? viewDevices,
    TResult Function(_DataDashboardState value)? data,
    TResult Function(_ErrorDashboardState value)? error,
    TResult Function(_SuccessDashboardState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessDashboardState implements DashboardState {
  const factory _SuccessDashboardState({String? message}) =
      _$_SuccessDashboardState;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SuccessDashboardStateCopyWith<_SuccessDashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DashboardEventTearOff {
  const _$DashboardEventTearOff();

  _InitialDashboardEvent initial() {
    return const _InitialDashboardEvent();
  }

  _StartEngineDashboardEvent startEngine() {
    return const _StartEngineDashboardEvent();
  }

  _TurnEmergencySignalDashboardEvent turnEmergencySignal() {
    return const _TurnEmergencySignalDashboardEvent();
  }

  _OpenWarningDashboardEvent openWarning() {
    return const _OpenWarningDashboardEvent();
  }

  _OpenDoorsDashboardEvent openDoors() {
    return const _OpenDoorsDashboardEvent();
  }

  _OpenTrunkDashboardEvent openTrunk() {
    return const _OpenTrunkDashboardEvent();
  }

  _TurnOnOffHighBeamDashboardEvent turnOnOffHighBeam() {
    return const _TurnOnOffHighBeamDashboardEvent();
  }

  _TurnOnOffLowBeamDashboardEvent turnOnOffLowBeam() {
    return const _TurnOnOffLowBeamDashboardEvent();
  }

  _OpenSettingsDashboardEvent openSettings({List<int>? code}) {
    return _OpenSettingsDashboardEvent(
      code: code,
    );
  }

  _ViewWeatherDashboardEvent viewWeather() {
    return const _ViewWeatherDashboardEvent();
  }

  _ViewDevivesDashboardEvent viewDevices() {
    return const _ViewDevivesDashboardEvent();
  }

  _SendSosSmsDashboardEvent sendSosSms() {
    return const _SendSosSmsDashboardEvent();
  }
}

/// @nodoc
const $DashboardEvent = _$DashboardEventTearOff();

/// @nodoc
mixin _$DashboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() startEngine,
    required TResult Function() turnEmergencySignal,
    required TResult Function() openWarning,
    required TResult Function() openDoors,
    required TResult Function() openTrunk,
    required TResult Function() turnOnOffHighBeam,
    required TResult Function() turnOnOffLowBeam,
    required TResult Function(List<int>? code) openSettings,
    required TResult Function() viewWeather,
    required TResult Function() viewDevices,
    required TResult Function() sendSosSms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? startEngine,
    TResult Function()? turnEmergencySignal,
    TResult Function()? openWarning,
    TResult Function()? openDoors,
    TResult Function()? openTrunk,
    TResult Function()? turnOnOffHighBeam,
    TResult Function()? turnOnOffLowBeam,
    TResult Function(List<int>? code)? openSettings,
    TResult Function()? viewWeather,
    TResult Function()? viewDevices,
    TResult Function()? sendSosSms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDashboardEvent value) initial,
    required TResult Function(_StartEngineDashboardEvent value) startEngine,
    required TResult Function(_TurnEmergencySignalDashboardEvent value)
        turnEmergencySignal,
    required TResult Function(_OpenWarningDashboardEvent value) openWarning,
    required TResult Function(_OpenDoorsDashboardEvent value) openDoors,
    required TResult Function(_OpenTrunkDashboardEvent value) openTrunk,
    required TResult Function(_TurnOnOffHighBeamDashboardEvent value)
        turnOnOffHighBeam,
    required TResult Function(_TurnOnOffLowBeamDashboardEvent value)
        turnOnOffLowBeam,
    required TResult Function(_OpenSettingsDashboardEvent value) openSettings,
    required TResult Function(_ViewWeatherDashboardEvent value) viewWeather,
    required TResult Function(_ViewDevivesDashboardEvent value) viewDevices,
    required TResult Function(_SendSosSmsDashboardEvent value) sendSosSms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDashboardEvent value)? initial,
    TResult Function(_StartEngineDashboardEvent value)? startEngine,
    TResult Function(_TurnEmergencySignalDashboardEvent value)?
        turnEmergencySignal,
    TResult Function(_OpenWarningDashboardEvent value)? openWarning,
    TResult Function(_OpenDoorsDashboardEvent value)? openDoors,
    TResult Function(_OpenTrunkDashboardEvent value)? openTrunk,
    TResult Function(_TurnOnOffHighBeamDashboardEvent value)? turnOnOffHighBeam,
    TResult Function(_TurnOnOffLowBeamDashboardEvent value)? turnOnOffLowBeam,
    TResult Function(_OpenSettingsDashboardEvent value)? openSettings,
    TResult Function(_ViewWeatherDashboardEvent value)? viewWeather,
    TResult Function(_ViewDevivesDashboardEvent value)? viewDevices,
    TResult Function(_SendSosSmsDashboardEvent value)? sendSosSms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEventCopyWith<$Res> {
  factory $DashboardEventCopyWith(
          DashboardEvent value, $Res Function(DashboardEvent) then) =
      _$DashboardEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DashboardEventCopyWithImpl<$Res>
    implements $DashboardEventCopyWith<$Res> {
  _$DashboardEventCopyWithImpl(this._value, this._then);

  final DashboardEvent _value;
  // ignore: unused_field
  final $Res Function(DashboardEvent) _then;
}

/// @nodoc
abstract class _$InitialDashboardEventCopyWith<$Res> {
  factory _$InitialDashboardEventCopyWith(_InitialDashboardEvent value,
          $Res Function(_InitialDashboardEvent) then) =
      __$InitialDashboardEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialDashboardEventCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res>
    implements _$InitialDashboardEventCopyWith<$Res> {
  __$InitialDashboardEventCopyWithImpl(_InitialDashboardEvent _value,
      $Res Function(_InitialDashboardEvent) _then)
      : super(_value, (v) => _then(v as _InitialDashboardEvent));

  @override
  _InitialDashboardEvent get _value => super._value as _InitialDashboardEvent;
}

/// @nodoc

class _$_InitialDashboardEvent
    with DiagnosticableTreeMixin
    implements _InitialDashboardEvent {
  const _$_InitialDashboardEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardEvent.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DashboardEvent.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialDashboardEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() startEngine,
    required TResult Function() turnEmergencySignal,
    required TResult Function() openWarning,
    required TResult Function() openDoors,
    required TResult Function() openTrunk,
    required TResult Function() turnOnOffHighBeam,
    required TResult Function() turnOnOffLowBeam,
    required TResult Function(List<int>? code) openSettings,
    required TResult Function() viewWeather,
    required TResult Function() viewDevices,
    required TResult Function() sendSosSms,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? startEngine,
    TResult Function()? turnEmergencySignal,
    TResult Function()? openWarning,
    TResult Function()? openDoors,
    TResult Function()? openTrunk,
    TResult Function()? turnOnOffHighBeam,
    TResult Function()? turnOnOffLowBeam,
    TResult Function(List<int>? code)? openSettings,
    TResult Function()? viewWeather,
    TResult Function()? viewDevices,
    TResult Function()? sendSosSms,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDashboardEvent value) initial,
    required TResult Function(_StartEngineDashboardEvent value) startEngine,
    required TResult Function(_TurnEmergencySignalDashboardEvent value)
        turnEmergencySignal,
    required TResult Function(_OpenWarningDashboardEvent value) openWarning,
    required TResult Function(_OpenDoorsDashboardEvent value) openDoors,
    required TResult Function(_OpenTrunkDashboardEvent value) openTrunk,
    required TResult Function(_TurnOnOffHighBeamDashboardEvent value)
        turnOnOffHighBeam,
    required TResult Function(_TurnOnOffLowBeamDashboardEvent value)
        turnOnOffLowBeam,
    required TResult Function(_OpenSettingsDashboardEvent value) openSettings,
    required TResult Function(_ViewWeatherDashboardEvent value) viewWeather,
    required TResult Function(_ViewDevivesDashboardEvent value) viewDevices,
    required TResult Function(_SendSosSmsDashboardEvent value) sendSosSms,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDashboardEvent value)? initial,
    TResult Function(_StartEngineDashboardEvent value)? startEngine,
    TResult Function(_TurnEmergencySignalDashboardEvent value)?
        turnEmergencySignal,
    TResult Function(_OpenWarningDashboardEvent value)? openWarning,
    TResult Function(_OpenDoorsDashboardEvent value)? openDoors,
    TResult Function(_OpenTrunkDashboardEvent value)? openTrunk,
    TResult Function(_TurnOnOffHighBeamDashboardEvent value)? turnOnOffHighBeam,
    TResult Function(_TurnOnOffLowBeamDashboardEvent value)? turnOnOffLowBeam,
    TResult Function(_OpenSettingsDashboardEvent value)? openSettings,
    TResult Function(_ViewWeatherDashboardEvent value)? viewWeather,
    TResult Function(_ViewDevivesDashboardEvent value)? viewDevices,
    TResult Function(_SendSosSmsDashboardEvent value)? sendSosSms,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialDashboardEvent implements DashboardEvent {
  const factory _InitialDashboardEvent() = _$_InitialDashboardEvent;
}

/// @nodoc
abstract class _$StartEngineDashboardEventCopyWith<$Res> {
  factory _$StartEngineDashboardEventCopyWith(_StartEngineDashboardEvent value,
          $Res Function(_StartEngineDashboardEvent) then) =
      __$StartEngineDashboardEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartEngineDashboardEventCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res>
    implements _$StartEngineDashboardEventCopyWith<$Res> {
  __$StartEngineDashboardEventCopyWithImpl(_StartEngineDashboardEvent _value,
      $Res Function(_StartEngineDashboardEvent) _then)
      : super(_value, (v) => _then(v as _StartEngineDashboardEvent));

  @override
  _StartEngineDashboardEvent get _value =>
      super._value as _StartEngineDashboardEvent;
}

/// @nodoc

class _$_StartEngineDashboardEvent
    with DiagnosticableTreeMixin
    implements _StartEngineDashboardEvent {
  const _$_StartEngineDashboardEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardEvent.startEngine()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DashboardEvent.startEngine'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StartEngineDashboardEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() startEngine,
    required TResult Function() turnEmergencySignal,
    required TResult Function() openWarning,
    required TResult Function() openDoors,
    required TResult Function() openTrunk,
    required TResult Function() turnOnOffHighBeam,
    required TResult Function() turnOnOffLowBeam,
    required TResult Function(List<int>? code) openSettings,
    required TResult Function() viewWeather,
    required TResult Function() viewDevices,
    required TResult Function() sendSosSms,
  }) {
    return startEngine();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? startEngine,
    TResult Function()? turnEmergencySignal,
    TResult Function()? openWarning,
    TResult Function()? openDoors,
    TResult Function()? openTrunk,
    TResult Function()? turnOnOffHighBeam,
    TResult Function()? turnOnOffLowBeam,
    TResult Function(List<int>? code)? openSettings,
    TResult Function()? viewWeather,
    TResult Function()? viewDevices,
    TResult Function()? sendSosSms,
    required TResult orElse(),
  }) {
    if (startEngine != null) {
      return startEngine();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDashboardEvent value) initial,
    required TResult Function(_StartEngineDashboardEvent value) startEngine,
    required TResult Function(_TurnEmergencySignalDashboardEvent value)
        turnEmergencySignal,
    required TResult Function(_OpenWarningDashboardEvent value) openWarning,
    required TResult Function(_OpenDoorsDashboardEvent value) openDoors,
    required TResult Function(_OpenTrunkDashboardEvent value) openTrunk,
    required TResult Function(_TurnOnOffHighBeamDashboardEvent value)
        turnOnOffHighBeam,
    required TResult Function(_TurnOnOffLowBeamDashboardEvent value)
        turnOnOffLowBeam,
    required TResult Function(_OpenSettingsDashboardEvent value) openSettings,
    required TResult Function(_ViewWeatherDashboardEvent value) viewWeather,
    required TResult Function(_ViewDevivesDashboardEvent value) viewDevices,
    required TResult Function(_SendSosSmsDashboardEvent value) sendSosSms,
  }) {
    return startEngine(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDashboardEvent value)? initial,
    TResult Function(_StartEngineDashboardEvent value)? startEngine,
    TResult Function(_TurnEmergencySignalDashboardEvent value)?
        turnEmergencySignal,
    TResult Function(_OpenWarningDashboardEvent value)? openWarning,
    TResult Function(_OpenDoorsDashboardEvent value)? openDoors,
    TResult Function(_OpenTrunkDashboardEvent value)? openTrunk,
    TResult Function(_TurnOnOffHighBeamDashboardEvent value)? turnOnOffHighBeam,
    TResult Function(_TurnOnOffLowBeamDashboardEvent value)? turnOnOffLowBeam,
    TResult Function(_OpenSettingsDashboardEvent value)? openSettings,
    TResult Function(_ViewWeatherDashboardEvent value)? viewWeather,
    TResult Function(_ViewDevivesDashboardEvent value)? viewDevices,
    TResult Function(_SendSosSmsDashboardEvent value)? sendSosSms,
    required TResult orElse(),
  }) {
    if (startEngine != null) {
      return startEngine(this);
    }
    return orElse();
  }
}

abstract class _StartEngineDashboardEvent implements DashboardEvent {
  const factory _StartEngineDashboardEvent() = _$_StartEngineDashboardEvent;
}

/// @nodoc
abstract class _$TurnEmergencySignalDashboardEventCopyWith<$Res> {
  factory _$TurnEmergencySignalDashboardEventCopyWith(
          _TurnEmergencySignalDashboardEvent value,
          $Res Function(_TurnEmergencySignalDashboardEvent) then) =
      __$TurnEmergencySignalDashboardEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$TurnEmergencySignalDashboardEventCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res>
    implements _$TurnEmergencySignalDashboardEventCopyWith<$Res> {
  __$TurnEmergencySignalDashboardEventCopyWithImpl(
      _TurnEmergencySignalDashboardEvent _value,
      $Res Function(_TurnEmergencySignalDashboardEvent) _then)
      : super(_value, (v) => _then(v as _TurnEmergencySignalDashboardEvent));

  @override
  _TurnEmergencySignalDashboardEvent get _value =>
      super._value as _TurnEmergencySignalDashboardEvent;
}

/// @nodoc

class _$_TurnEmergencySignalDashboardEvent
    with DiagnosticableTreeMixin
    implements _TurnEmergencySignalDashboardEvent {
  const _$_TurnEmergencySignalDashboardEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardEvent.turnEmergencySignal()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DashboardEvent.turnEmergencySignal'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TurnEmergencySignalDashboardEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() startEngine,
    required TResult Function() turnEmergencySignal,
    required TResult Function() openWarning,
    required TResult Function() openDoors,
    required TResult Function() openTrunk,
    required TResult Function() turnOnOffHighBeam,
    required TResult Function() turnOnOffLowBeam,
    required TResult Function(List<int>? code) openSettings,
    required TResult Function() viewWeather,
    required TResult Function() viewDevices,
    required TResult Function() sendSosSms,
  }) {
    return turnEmergencySignal();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? startEngine,
    TResult Function()? turnEmergencySignal,
    TResult Function()? openWarning,
    TResult Function()? openDoors,
    TResult Function()? openTrunk,
    TResult Function()? turnOnOffHighBeam,
    TResult Function()? turnOnOffLowBeam,
    TResult Function(List<int>? code)? openSettings,
    TResult Function()? viewWeather,
    TResult Function()? viewDevices,
    TResult Function()? sendSosSms,
    required TResult orElse(),
  }) {
    if (turnEmergencySignal != null) {
      return turnEmergencySignal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDashboardEvent value) initial,
    required TResult Function(_StartEngineDashboardEvent value) startEngine,
    required TResult Function(_TurnEmergencySignalDashboardEvent value)
        turnEmergencySignal,
    required TResult Function(_OpenWarningDashboardEvent value) openWarning,
    required TResult Function(_OpenDoorsDashboardEvent value) openDoors,
    required TResult Function(_OpenTrunkDashboardEvent value) openTrunk,
    required TResult Function(_TurnOnOffHighBeamDashboardEvent value)
        turnOnOffHighBeam,
    required TResult Function(_TurnOnOffLowBeamDashboardEvent value)
        turnOnOffLowBeam,
    required TResult Function(_OpenSettingsDashboardEvent value) openSettings,
    required TResult Function(_ViewWeatherDashboardEvent value) viewWeather,
    required TResult Function(_ViewDevivesDashboardEvent value) viewDevices,
    required TResult Function(_SendSosSmsDashboardEvent value) sendSosSms,
  }) {
    return turnEmergencySignal(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDashboardEvent value)? initial,
    TResult Function(_StartEngineDashboardEvent value)? startEngine,
    TResult Function(_TurnEmergencySignalDashboardEvent value)?
        turnEmergencySignal,
    TResult Function(_OpenWarningDashboardEvent value)? openWarning,
    TResult Function(_OpenDoorsDashboardEvent value)? openDoors,
    TResult Function(_OpenTrunkDashboardEvent value)? openTrunk,
    TResult Function(_TurnOnOffHighBeamDashboardEvent value)? turnOnOffHighBeam,
    TResult Function(_TurnOnOffLowBeamDashboardEvent value)? turnOnOffLowBeam,
    TResult Function(_OpenSettingsDashboardEvent value)? openSettings,
    TResult Function(_ViewWeatherDashboardEvent value)? viewWeather,
    TResult Function(_ViewDevivesDashboardEvent value)? viewDevices,
    TResult Function(_SendSosSmsDashboardEvent value)? sendSosSms,
    required TResult orElse(),
  }) {
    if (turnEmergencySignal != null) {
      return turnEmergencySignal(this);
    }
    return orElse();
  }
}

abstract class _TurnEmergencySignalDashboardEvent implements DashboardEvent {
  const factory _TurnEmergencySignalDashboardEvent() =
      _$_TurnEmergencySignalDashboardEvent;
}

/// @nodoc
abstract class _$OpenWarningDashboardEventCopyWith<$Res> {
  factory _$OpenWarningDashboardEventCopyWith(_OpenWarningDashboardEvent value,
          $Res Function(_OpenWarningDashboardEvent) then) =
      __$OpenWarningDashboardEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$OpenWarningDashboardEventCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res>
    implements _$OpenWarningDashboardEventCopyWith<$Res> {
  __$OpenWarningDashboardEventCopyWithImpl(_OpenWarningDashboardEvent _value,
      $Res Function(_OpenWarningDashboardEvent) _then)
      : super(_value, (v) => _then(v as _OpenWarningDashboardEvent));

  @override
  _OpenWarningDashboardEvent get _value =>
      super._value as _OpenWarningDashboardEvent;
}

/// @nodoc

class _$_OpenWarningDashboardEvent
    with DiagnosticableTreeMixin
    implements _OpenWarningDashboardEvent {
  const _$_OpenWarningDashboardEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardEvent.openWarning()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DashboardEvent.openWarning'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OpenWarningDashboardEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() startEngine,
    required TResult Function() turnEmergencySignal,
    required TResult Function() openWarning,
    required TResult Function() openDoors,
    required TResult Function() openTrunk,
    required TResult Function() turnOnOffHighBeam,
    required TResult Function() turnOnOffLowBeam,
    required TResult Function(List<int>? code) openSettings,
    required TResult Function() viewWeather,
    required TResult Function() viewDevices,
    required TResult Function() sendSosSms,
  }) {
    return openWarning();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? startEngine,
    TResult Function()? turnEmergencySignal,
    TResult Function()? openWarning,
    TResult Function()? openDoors,
    TResult Function()? openTrunk,
    TResult Function()? turnOnOffHighBeam,
    TResult Function()? turnOnOffLowBeam,
    TResult Function(List<int>? code)? openSettings,
    TResult Function()? viewWeather,
    TResult Function()? viewDevices,
    TResult Function()? sendSosSms,
    required TResult orElse(),
  }) {
    if (openWarning != null) {
      return openWarning();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDashboardEvent value) initial,
    required TResult Function(_StartEngineDashboardEvent value) startEngine,
    required TResult Function(_TurnEmergencySignalDashboardEvent value)
        turnEmergencySignal,
    required TResult Function(_OpenWarningDashboardEvent value) openWarning,
    required TResult Function(_OpenDoorsDashboardEvent value) openDoors,
    required TResult Function(_OpenTrunkDashboardEvent value) openTrunk,
    required TResult Function(_TurnOnOffHighBeamDashboardEvent value)
        turnOnOffHighBeam,
    required TResult Function(_TurnOnOffLowBeamDashboardEvent value)
        turnOnOffLowBeam,
    required TResult Function(_OpenSettingsDashboardEvent value) openSettings,
    required TResult Function(_ViewWeatherDashboardEvent value) viewWeather,
    required TResult Function(_ViewDevivesDashboardEvent value) viewDevices,
    required TResult Function(_SendSosSmsDashboardEvent value) sendSosSms,
  }) {
    return openWarning(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDashboardEvent value)? initial,
    TResult Function(_StartEngineDashboardEvent value)? startEngine,
    TResult Function(_TurnEmergencySignalDashboardEvent value)?
        turnEmergencySignal,
    TResult Function(_OpenWarningDashboardEvent value)? openWarning,
    TResult Function(_OpenDoorsDashboardEvent value)? openDoors,
    TResult Function(_OpenTrunkDashboardEvent value)? openTrunk,
    TResult Function(_TurnOnOffHighBeamDashboardEvent value)? turnOnOffHighBeam,
    TResult Function(_TurnOnOffLowBeamDashboardEvent value)? turnOnOffLowBeam,
    TResult Function(_OpenSettingsDashboardEvent value)? openSettings,
    TResult Function(_ViewWeatherDashboardEvent value)? viewWeather,
    TResult Function(_ViewDevivesDashboardEvent value)? viewDevices,
    TResult Function(_SendSosSmsDashboardEvent value)? sendSosSms,
    required TResult orElse(),
  }) {
    if (openWarning != null) {
      return openWarning(this);
    }
    return orElse();
  }
}

abstract class _OpenWarningDashboardEvent implements DashboardEvent {
  const factory _OpenWarningDashboardEvent() = _$_OpenWarningDashboardEvent;
}

/// @nodoc
abstract class _$OpenDoorsDashboardEventCopyWith<$Res> {
  factory _$OpenDoorsDashboardEventCopyWith(_OpenDoorsDashboardEvent value,
          $Res Function(_OpenDoorsDashboardEvent) then) =
      __$OpenDoorsDashboardEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$OpenDoorsDashboardEventCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res>
    implements _$OpenDoorsDashboardEventCopyWith<$Res> {
  __$OpenDoorsDashboardEventCopyWithImpl(_OpenDoorsDashboardEvent _value,
      $Res Function(_OpenDoorsDashboardEvent) _then)
      : super(_value, (v) => _then(v as _OpenDoorsDashboardEvent));

  @override
  _OpenDoorsDashboardEvent get _value =>
      super._value as _OpenDoorsDashboardEvent;
}

/// @nodoc

class _$_OpenDoorsDashboardEvent
    with DiagnosticableTreeMixin
    implements _OpenDoorsDashboardEvent {
  const _$_OpenDoorsDashboardEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardEvent.openDoors()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DashboardEvent.openDoors'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OpenDoorsDashboardEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() startEngine,
    required TResult Function() turnEmergencySignal,
    required TResult Function() openWarning,
    required TResult Function() openDoors,
    required TResult Function() openTrunk,
    required TResult Function() turnOnOffHighBeam,
    required TResult Function() turnOnOffLowBeam,
    required TResult Function(List<int>? code) openSettings,
    required TResult Function() viewWeather,
    required TResult Function() viewDevices,
    required TResult Function() sendSosSms,
  }) {
    return openDoors();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? startEngine,
    TResult Function()? turnEmergencySignal,
    TResult Function()? openWarning,
    TResult Function()? openDoors,
    TResult Function()? openTrunk,
    TResult Function()? turnOnOffHighBeam,
    TResult Function()? turnOnOffLowBeam,
    TResult Function(List<int>? code)? openSettings,
    TResult Function()? viewWeather,
    TResult Function()? viewDevices,
    TResult Function()? sendSosSms,
    required TResult orElse(),
  }) {
    if (openDoors != null) {
      return openDoors();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDashboardEvent value) initial,
    required TResult Function(_StartEngineDashboardEvent value) startEngine,
    required TResult Function(_TurnEmergencySignalDashboardEvent value)
        turnEmergencySignal,
    required TResult Function(_OpenWarningDashboardEvent value) openWarning,
    required TResult Function(_OpenDoorsDashboardEvent value) openDoors,
    required TResult Function(_OpenTrunkDashboardEvent value) openTrunk,
    required TResult Function(_TurnOnOffHighBeamDashboardEvent value)
        turnOnOffHighBeam,
    required TResult Function(_TurnOnOffLowBeamDashboardEvent value)
        turnOnOffLowBeam,
    required TResult Function(_OpenSettingsDashboardEvent value) openSettings,
    required TResult Function(_ViewWeatherDashboardEvent value) viewWeather,
    required TResult Function(_ViewDevivesDashboardEvent value) viewDevices,
    required TResult Function(_SendSosSmsDashboardEvent value) sendSosSms,
  }) {
    return openDoors(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDashboardEvent value)? initial,
    TResult Function(_StartEngineDashboardEvent value)? startEngine,
    TResult Function(_TurnEmergencySignalDashboardEvent value)?
        turnEmergencySignal,
    TResult Function(_OpenWarningDashboardEvent value)? openWarning,
    TResult Function(_OpenDoorsDashboardEvent value)? openDoors,
    TResult Function(_OpenTrunkDashboardEvent value)? openTrunk,
    TResult Function(_TurnOnOffHighBeamDashboardEvent value)? turnOnOffHighBeam,
    TResult Function(_TurnOnOffLowBeamDashboardEvent value)? turnOnOffLowBeam,
    TResult Function(_OpenSettingsDashboardEvent value)? openSettings,
    TResult Function(_ViewWeatherDashboardEvent value)? viewWeather,
    TResult Function(_ViewDevivesDashboardEvent value)? viewDevices,
    TResult Function(_SendSosSmsDashboardEvent value)? sendSosSms,
    required TResult orElse(),
  }) {
    if (openDoors != null) {
      return openDoors(this);
    }
    return orElse();
  }
}

abstract class _OpenDoorsDashboardEvent implements DashboardEvent {
  const factory _OpenDoorsDashboardEvent() = _$_OpenDoorsDashboardEvent;
}

/// @nodoc
abstract class _$OpenTrunkDashboardEventCopyWith<$Res> {
  factory _$OpenTrunkDashboardEventCopyWith(_OpenTrunkDashboardEvent value,
          $Res Function(_OpenTrunkDashboardEvent) then) =
      __$OpenTrunkDashboardEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$OpenTrunkDashboardEventCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res>
    implements _$OpenTrunkDashboardEventCopyWith<$Res> {
  __$OpenTrunkDashboardEventCopyWithImpl(_OpenTrunkDashboardEvent _value,
      $Res Function(_OpenTrunkDashboardEvent) _then)
      : super(_value, (v) => _then(v as _OpenTrunkDashboardEvent));

  @override
  _OpenTrunkDashboardEvent get _value =>
      super._value as _OpenTrunkDashboardEvent;
}

/// @nodoc

class _$_OpenTrunkDashboardEvent
    with DiagnosticableTreeMixin
    implements _OpenTrunkDashboardEvent {
  const _$_OpenTrunkDashboardEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardEvent.openTrunk()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DashboardEvent.openTrunk'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OpenTrunkDashboardEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() startEngine,
    required TResult Function() turnEmergencySignal,
    required TResult Function() openWarning,
    required TResult Function() openDoors,
    required TResult Function() openTrunk,
    required TResult Function() turnOnOffHighBeam,
    required TResult Function() turnOnOffLowBeam,
    required TResult Function(List<int>? code) openSettings,
    required TResult Function() viewWeather,
    required TResult Function() viewDevices,
    required TResult Function() sendSosSms,
  }) {
    return openTrunk();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? startEngine,
    TResult Function()? turnEmergencySignal,
    TResult Function()? openWarning,
    TResult Function()? openDoors,
    TResult Function()? openTrunk,
    TResult Function()? turnOnOffHighBeam,
    TResult Function()? turnOnOffLowBeam,
    TResult Function(List<int>? code)? openSettings,
    TResult Function()? viewWeather,
    TResult Function()? viewDevices,
    TResult Function()? sendSosSms,
    required TResult orElse(),
  }) {
    if (openTrunk != null) {
      return openTrunk();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDashboardEvent value) initial,
    required TResult Function(_StartEngineDashboardEvent value) startEngine,
    required TResult Function(_TurnEmergencySignalDashboardEvent value)
        turnEmergencySignal,
    required TResult Function(_OpenWarningDashboardEvent value) openWarning,
    required TResult Function(_OpenDoorsDashboardEvent value) openDoors,
    required TResult Function(_OpenTrunkDashboardEvent value) openTrunk,
    required TResult Function(_TurnOnOffHighBeamDashboardEvent value)
        turnOnOffHighBeam,
    required TResult Function(_TurnOnOffLowBeamDashboardEvent value)
        turnOnOffLowBeam,
    required TResult Function(_OpenSettingsDashboardEvent value) openSettings,
    required TResult Function(_ViewWeatherDashboardEvent value) viewWeather,
    required TResult Function(_ViewDevivesDashboardEvent value) viewDevices,
    required TResult Function(_SendSosSmsDashboardEvent value) sendSosSms,
  }) {
    return openTrunk(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDashboardEvent value)? initial,
    TResult Function(_StartEngineDashboardEvent value)? startEngine,
    TResult Function(_TurnEmergencySignalDashboardEvent value)?
        turnEmergencySignal,
    TResult Function(_OpenWarningDashboardEvent value)? openWarning,
    TResult Function(_OpenDoorsDashboardEvent value)? openDoors,
    TResult Function(_OpenTrunkDashboardEvent value)? openTrunk,
    TResult Function(_TurnOnOffHighBeamDashboardEvent value)? turnOnOffHighBeam,
    TResult Function(_TurnOnOffLowBeamDashboardEvent value)? turnOnOffLowBeam,
    TResult Function(_OpenSettingsDashboardEvent value)? openSettings,
    TResult Function(_ViewWeatherDashboardEvent value)? viewWeather,
    TResult Function(_ViewDevivesDashboardEvent value)? viewDevices,
    TResult Function(_SendSosSmsDashboardEvent value)? sendSosSms,
    required TResult orElse(),
  }) {
    if (openTrunk != null) {
      return openTrunk(this);
    }
    return orElse();
  }
}

abstract class _OpenTrunkDashboardEvent implements DashboardEvent {
  const factory _OpenTrunkDashboardEvent() = _$_OpenTrunkDashboardEvent;
}

/// @nodoc
abstract class _$TurnOnOffHighBeamDashboardEventCopyWith<$Res> {
  factory _$TurnOnOffHighBeamDashboardEventCopyWith(
          _TurnOnOffHighBeamDashboardEvent value,
          $Res Function(_TurnOnOffHighBeamDashboardEvent) then) =
      __$TurnOnOffHighBeamDashboardEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$TurnOnOffHighBeamDashboardEventCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res>
    implements _$TurnOnOffHighBeamDashboardEventCopyWith<$Res> {
  __$TurnOnOffHighBeamDashboardEventCopyWithImpl(
      _TurnOnOffHighBeamDashboardEvent _value,
      $Res Function(_TurnOnOffHighBeamDashboardEvent) _then)
      : super(_value, (v) => _then(v as _TurnOnOffHighBeamDashboardEvent));

  @override
  _TurnOnOffHighBeamDashboardEvent get _value =>
      super._value as _TurnOnOffHighBeamDashboardEvent;
}

/// @nodoc

class _$_TurnOnOffHighBeamDashboardEvent
    with DiagnosticableTreeMixin
    implements _TurnOnOffHighBeamDashboardEvent {
  const _$_TurnOnOffHighBeamDashboardEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardEvent.turnOnOffHighBeam()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DashboardEvent.turnOnOffHighBeam'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TurnOnOffHighBeamDashboardEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() startEngine,
    required TResult Function() turnEmergencySignal,
    required TResult Function() openWarning,
    required TResult Function() openDoors,
    required TResult Function() openTrunk,
    required TResult Function() turnOnOffHighBeam,
    required TResult Function() turnOnOffLowBeam,
    required TResult Function(List<int>? code) openSettings,
    required TResult Function() viewWeather,
    required TResult Function() viewDevices,
    required TResult Function() sendSosSms,
  }) {
    return turnOnOffHighBeam();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? startEngine,
    TResult Function()? turnEmergencySignal,
    TResult Function()? openWarning,
    TResult Function()? openDoors,
    TResult Function()? openTrunk,
    TResult Function()? turnOnOffHighBeam,
    TResult Function()? turnOnOffLowBeam,
    TResult Function(List<int>? code)? openSettings,
    TResult Function()? viewWeather,
    TResult Function()? viewDevices,
    TResult Function()? sendSosSms,
    required TResult orElse(),
  }) {
    if (turnOnOffHighBeam != null) {
      return turnOnOffHighBeam();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDashboardEvent value) initial,
    required TResult Function(_StartEngineDashboardEvent value) startEngine,
    required TResult Function(_TurnEmergencySignalDashboardEvent value)
        turnEmergencySignal,
    required TResult Function(_OpenWarningDashboardEvent value) openWarning,
    required TResult Function(_OpenDoorsDashboardEvent value) openDoors,
    required TResult Function(_OpenTrunkDashboardEvent value) openTrunk,
    required TResult Function(_TurnOnOffHighBeamDashboardEvent value)
        turnOnOffHighBeam,
    required TResult Function(_TurnOnOffLowBeamDashboardEvent value)
        turnOnOffLowBeam,
    required TResult Function(_OpenSettingsDashboardEvent value) openSettings,
    required TResult Function(_ViewWeatherDashboardEvent value) viewWeather,
    required TResult Function(_ViewDevivesDashboardEvent value) viewDevices,
    required TResult Function(_SendSosSmsDashboardEvent value) sendSosSms,
  }) {
    return turnOnOffHighBeam(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDashboardEvent value)? initial,
    TResult Function(_StartEngineDashboardEvent value)? startEngine,
    TResult Function(_TurnEmergencySignalDashboardEvent value)?
        turnEmergencySignal,
    TResult Function(_OpenWarningDashboardEvent value)? openWarning,
    TResult Function(_OpenDoorsDashboardEvent value)? openDoors,
    TResult Function(_OpenTrunkDashboardEvent value)? openTrunk,
    TResult Function(_TurnOnOffHighBeamDashboardEvent value)? turnOnOffHighBeam,
    TResult Function(_TurnOnOffLowBeamDashboardEvent value)? turnOnOffLowBeam,
    TResult Function(_OpenSettingsDashboardEvent value)? openSettings,
    TResult Function(_ViewWeatherDashboardEvent value)? viewWeather,
    TResult Function(_ViewDevivesDashboardEvent value)? viewDevices,
    TResult Function(_SendSosSmsDashboardEvent value)? sendSosSms,
    required TResult orElse(),
  }) {
    if (turnOnOffHighBeam != null) {
      return turnOnOffHighBeam(this);
    }
    return orElse();
  }
}

abstract class _TurnOnOffHighBeamDashboardEvent implements DashboardEvent {
  const factory _TurnOnOffHighBeamDashboardEvent() =
      _$_TurnOnOffHighBeamDashboardEvent;
}

/// @nodoc
abstract class _$TurnOnOffLowBeamDashboardEventCopyWith<$Res> {
  factory _$TurnOnOffLowBeamDashboardEventCopyWith(
          _TurnOnOffLowBeamDashboardEvent value,
          $Res Function(_TurnOnOffLowBeamDashboardEvent) then) =
      __$TurnOnOffLowBeamDashboardEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$TurnOnOffLowBeamDashboardEventCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res>
    implements _$TurnOnOffLowBeamDashboardEventCopyWith<$Res> {
  __$TurnOnOffLowBeamDashboardEventCopyWithImpl(
      _TurnOnOffLowBeamDashboardEvent _value,
      $Res Function(_TurnOnOffLowBeamDashboardEvent) _then)
      : super(_value, (v) => _then(v as _TurnOnOffLowBeamDashboardEvent));

  @override
  _TurnOnOffLowBeamDashboardEvent get _value =>
      super._value as _TurnOnOffLowBeamDashboardEvent;
}

/// @nodoc

class _$_TurnOnOffLowBeamDashboardEvent
    with DiagnosticableTreeMixin
    implements _TurnOnOffLowBeamDashboardEvent {
  const _$_TurnOnOffLowBeamDashboardEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardEvent.turnOnOffLowBeam()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DashboardEvent.turnOnOffLowBeam'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TurnOnOffLowBeamDashboardEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() startEngine,
    required TResult Function() turnEmergencySignal,
    required TResult Function() openWarning,
    required TResult Function() openDoors,
    required TResult Function() openTrunk,
    required TResult Function() turnOnOffHighBeam,
    required TResult Function() turnOnOffLowBeam,
    required TResult Function(List<int>? code) openSettings,
    required TResult Function() viewWeather,
    required TResult Function() viewDevices,
    required TResult Function() sendSosSms,
  }) {
    return turnOnOffLowBeam();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? startEngine,
    TResult Function()? turnEmergencySignal,
    TResult Function()? openWarning,
    TResult Function()? openDoors,
    TResult Function()? openTrunk,
    TResult Function()? turnOnOffHighBeam,
    TResult Function()? turnOnOffLowBeam,
    TResult Function(List<int>? code)? openSettings,
    TResult Function()? viewWeather,
    TResult Function()? viewDevices,
    TResult Function()? sendSosSms,
    required TResult orElse(),
  }) {
    if (turnOnOffLowBeam != null) {
      return turnOnOffLowBeam();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDashboardEvent value) initial,
    required TResult Function(_StartEngineDashboardEvent value) startEngine,
    required TResult Function(_TurnEmergencySignalDashboardEvent value)
        turnEmergencySignal,
    required TResult Function(_OpenWarningDashboardEvent value) openWarning,
    required TResult Function(_OpenDoorsDashboardEvent value) openDoors,
    required TResult Function(_OpenTrunkDashboardEvent value) openTrunk,
    required TResult Function(_TurnOnOffHighBeamDashboardEvent value)
        turnOnOffHighBeam,
    required TResult Function(_TurnOnOffLowBeamDashboardEvent value)
        turnOnOffLowBeam,
    required TResult Function(_OpenSettingsDashboardEvent value) openSettings,
    required TResult Function(_ViewWeatherDashboardEvent value) viewWeather,
    required TResult Function(_ViewDevivesDashboardEvent value) viewDevices,
    required TResult Function(_SendSosSmsDashboardEvent value) sendSosSms,
  }) {
    return turnOnOffLowBeam(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDashboardEvent value)? initial,
    TResult Function(_StartEngineDashboardEvent value)? startEngine,
    TResult Function(_TurnEmergencySignalDashboardEvent value)?
        turnEmergencySignal,
    TResult Function(_OpenWarningDashboardEvent value)? openWarning,
    TResult Function(_OpenDoorsDashboardEvent value)? openDoors,
    TResult Function(_OpenTrunkDashboardEvent value)? openTrunk,
    TResult Function(_TurnOnOffHighBeamDashboardEvent value)? turnOnOffHighBeam,
    TResult Function(_TurnOnOffLowBeamDashboardEvent value)? turnOnOffLowBeam,
    TResult Function(_OpenSettingsDashboardEvent value)? openSettings,
    TResult Function(_ViewWeatherDashboardEvent value)? viewWeather,
    TResult Function(_ViewDevivesDashboardEvent value)? viewDevices,
    TResult Function(_SendSosSmsDashboardEvent value)? sendSosSms,
    required TResult orElse(),
  }) {
    if (turnOnOffLowBeam != null) {
      return turnOnOffLowBeam(this);
    }
    return orElse();
  }
}

abstract class _TurnOnOffLowBeamDashboardEvent implements DashboardEvent {
  const factory _TurnOnOffLowBeamDashboardEvent() =
      _$_TurnOnOffLowBeamDashboardEvent;
}

/// @nodoc
abstract class _$OpenSettingsDashboardEventCopyWith<$Res> {
  factory _$OpenSettingsDashboardEventCopyWith(
          _OpenSettingsDashboardEvent value,
          $Res Function(_OpenSettingsDashboardEvent) then) =
      __$OpenSettingsDashboardEventCopyWithImpl<$Res>;
  $Res call({List<int>? code});
}

/// @nodoc
class __$OpenSettingsDashboardEventCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res>
    implements _$OpenSettingsDashboardEventCopyWith<$Res> {
  __$OpenSettingsDashboardEventCopyWithImpl(_OpenSettingsDashboardEvent _value,
      $Res Function(_OpenSettingsDashboardEvent) _then)
      : super(_value, (v) => _then(v as _OpenSettingsDashboardEvent));

  @override
  _OpenSettingsDashboardEvent get _value =>
      super._value as _OpenSettingsDashboardEvent;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_OpenSettingsDashboardEvent(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

class _$_OpenSettingsDashboardEvent
    with DiagnosticableTreeMixin
    implements _OpenSettingsDashboardEvent {
  const _$_OpenSettingsDashboardEvent({this.code});

  @override
  final List<int>? code;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardEvent.openSettings(code: $code)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DashboardEvent.openSettings'))
      ..add(DiagnosticsProperty('code', code));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OpenSettingsDashboardEvent &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$OpenSettingsDashboardEventCopyWith<_OpenSettingsDashboardEvent>
      get copyWith => __$OpenSettingsDashboardEventCopyWithImpl<
          _OpenSettingsDashboardEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() startEngine,
    required TResult Function() turnEmergencySignal,
    required TResult Function() openWarning,
    required TResult Function() openDoors,
    required TResult Function() openTrunk,
    required TResult Function() turnOnOffHighBeam,
    required TResult Function() turnOnOffLowBeam,
    required TResult Function(List<int>? code) openSettings,
    required TResult Function() viewWeather,
    required TResult Function() viewDevices,
    required TResult Function() sendSosSms,
  }) {
    return openSettings(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? startEngine,
    TResult Function()? turnEmergencySignal,
    TResult Function()? openWarning,
    TResult Function()? openDoors,
    TResult Function()? openTrunk,
    TResult Function()? turnOnOffHighBeam,
    TResult Function()? turnOnOffLowBeam,
    TResult Function(List<int>? code)? openSettings,
    TResult Function()? viewWeather,
    TResult Function()? viewDevices,
    TResult Function()? sendSosSms,
    required TResult orElse(),
  }) {
    if (openSettings != null) {
      return openSettings(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDashboardEvent value) initial,
    required TResult Function(_StartEngineDashboardEvent value) startEngine,
    required TResult Function(_TurnEmergencySignalDashboardEvent value)
        turnEmergencySignal,
    required TResult Function(_OpenWarningDashboardEvent value) openWarning,
    required TResult Function(_OpenDoorsDashboardEvent value) openDoors,
    required TResult Function(_OpenTrunkDashboardEvent value) openTrunk,
    required TResult Function(_TurnOnOffHighBeamDashboardEvent value)
        turnOnOffHighBeam,
    required TResult Function(_TurnOnOffLowBeamDashboardEvent value)
        turnOnOffLowBeam,
    required TResult Function(_OpenSettingsDashboardEvent value) openSettings,
    required TResult Function(_ViewWeatherDashboardEvent value) viewWeather,
    required TResult Function(_ViewDevivesDashboardEvent value) viewDevices,
    required TResult Function(_SendSosSmsDashboardEvent value) sendSosSms,
  }) {
    return openSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDashboardEvent value)? initial,
    TResult Function(_StartEngineDashboardEvent value)? startEngine,
    TResult Function(_TurnEmergencySignalDashboardEvent value)?
        turnEmergencySignal,
    TResult Function(_OpenWarningDashboardEvent value)? openWarning,
    TResult Function(_OpenDoorsDashboardEvent value)? openDoors,
    TResult Function(_OpenTrunkDashboardEvent value)? openTrunk,
    TResult Function(_TurnOnOffHighBeamDashboardEvent value)? turnOnOffHighBeam,
    TResult Function(_TurnOnOffLowBeamDashboardEvent value)? turnOnOffLowBeam,
    TResult Function(_OpenSettingsDashboardEvent value)? openSettings,
    TResult Function(_ViewWeatherDashboardEvent value)? viewWeather,
    TResult Function(_ViewDevivesDashboardEvent value)? viewDevices,
    TResult Function(_SendSosSmsDashboardEvent value)? sendSosSms,
    required TResult orElse(),
  }) {
    if (openSettings != null) {
      return openSettings(this);
    }
    return orElse();
  }
}

abstract class _OpenSettingsDashboardEvent implements DashboardEvent {
  const factory _OpenSettingsDashboardEvent({List<int>? code}) =
      _$_OpenSettingsDashboardEvent;

  List<int>? get code => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OpenSettingsDashboardEventCopyWith<_OpenSettingsDashboardEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ViewWeatherDashboardEventCopyWith<$Res> {
  factory _$ViewWeatherDashboardEventCopyWith(_ViewWeatherDashboardEvent value,
          $Res Function(_ViewWeatherDashboardEvent) then) =
      __$ViewWeatherDashboardEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$ViewWeatherDashboardEventCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res>
    implements _$ViewWeatherDashboardEventCopyWith<$Res> {
  __$ViewWeatherDashboardEventCopyWithImpl(_ViewWeatherDashboardEvent _value,
      $Res Function(_ViewWeatherDashboardEvent) _then)
      : super(_value, (v) => _then(v as _ViewWeatherDashboardEvent));

  @override
  _ViewWeatherDashboardEvent get _value =>
      super._value as _ViewWeatherDashboardEvent;
}

/// @nodoc

class _$_ViewWeatherDashboardEvent
    with DiagnosticableTreeMixin
    implements _ViewWeatherDashboardEvent {
  const _$_ViewWeatherDashboardEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardEvent.viewWeather()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DashboardEvent.viewWeather'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ViewWeatherDashboardEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() startEngine,
    required TResult Function() turnEmergencySignal,
    required TResult Function() openWarning,
    required TResult Function() openDoors,
    required TResult Function() openTrunk,
    required TResult Function() turnOnOffHighBeam,
    required TResult Function() turnOnOffLowBeam,
    required TResult Function(List<int>? code) openSettings,
    required TResult Function() viewWeather,
    required TResult Function() viewDevices,
    required TResult Function() sendSosSms,
  }) {
    return viewWeather();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? startEngine,
    TResult Function()? turnEmergencySignal,
    TResult Function()? openWarning,
    TResult Function()? openDoors,
    TResult Function()? openTrunk,
    TResult Function()? turnOnOffHighBeam,
    TResult Function()? turnOnOffLowBeam,
    TResult Function(List<int>? code)? openSettings,
    TResult Function()? viewWeather,
    TResult Function()? viewDevices,
    TResult Function()? sendSosSms,
    required TResult orElse(),
  }) {
    if (viewWeather != null) {
      return viewWeather();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDashboardEvent value) initial,
    required TResult Function(_StartEngineDashboardEvent value) startEngine,
    required TResult Function(_TurnEmergencySignalDashboardEvent value)
        turnEmergencySignal,
    required TResult Function(_OpenWarningDashboardEvent value) openWarning,
    required TResult Function(_OpenDoorsDashboardEvent value) openDoors,
    required TResult Function(_OpenTrunkDashboardEvent value) openTrunk,
    required TResult Function(_TurnOnOffHighBeamDashboardEvent value)
        turnOnOffHighBeam,
    required TResult Function(_TurnOnOffLowBeamDashboardEvent value)
        turnOnOffLowBeam,
    required TResult Function(_OpenSettingsDashboardEvent value) openSettings,
    required TResult Function(_ViewWeatherDashboardEvent value) viewWeather,
    required TResult Function(_ViewDevivesDashboardEvent value) viewDevices,
    required TResult Function(_SendSosSmsDashboardEvent value) sendSosSms,
  }) {
    return viewWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDashboardEvent value)? initial,
    TResult Function(_StartEngineDashboardEvent value)? startEngine,
    TResult Function(_TurnEmergencySignalDashboardEvent value)?
        turnEmergencySignal,
    TResult Function(_OpenWarningDashboardEvent value)? openWarning,
    TResult Function(_OpenDoorsDashboardEvent value)? openDoors,
    TResult Function(_OpenTrunkDashboardEvent value)? openTrunk,
    TResult Function(_TurnOnOffHighBeamDashboardEvent value)? turnOnOffHighBeam,
    TResult Function(_TurnOnOffLowBeamDashboardEvent value)? turnOnOffLowBeam,
    TResult Function(_OpenSettingsDashboardEvent value)? openSettings,
    TResult Function(_ViewWeatherDashboardEvent value)? viewWeather,
    TResult Function(_ViewDevivesDashboardEvent value)? viewDevices,
    TResult Function(_SendSosSmsDashboardEvent value)? sendSosSms,
    required TResult orElse(),
  }) {
    if (viewWeather != null) {
      return viewWeather(this);
    }
    return orElse();
  }
}

abstract class _ViewWeatherDashboardEvent implements DashboardEvent {
  const factory _ViewWeatherDashboardEvent() = _$_ViewWeatherDashboardEvent;
}

/// @nodoc
abstract class _$ViewDevivesDashboardEventCopyWith<$Res> {
  factory _$ViewDevivesDashboardEventCopyWith(_ViewDevivesDashboardEvent value,
          $Res Function(_ViewDevivesDashboardEvent) then) =
      __$ViewDevivesDashboardEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$ViewDevivesDashboardEventCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res>
    implements _$ViewDevivesDashboardEventCopyWith<$Res> {
  __$ViewDevivesDashboardEventCopyWithImpl(_ViewDevivesDashboardEvent _value,
      $Res Function(_ViewDevivesDashboardEvent) _then)
      : super(_value, (v) => _then(v as _ViewDevivesDashboardEvent));

  @override
  _ViewDevivesDashboardEvent get _value =>
      super._value as _ViewDevivesDashboardEvent;
}

/// @nodoc

class _$_ViewDevivesDashboardEvent
    with DiagnosticableTreeMixin
    implements _ViewDevivesDashboardEvent {
  const _$_ViewDevivesDashboardEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardEvent.viewDevices()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DashboardEvent.viewDevices'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ViewDevivesDashboardEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() startEngine,
    required TResult Function() turnEmergencySignal,
    required TResult Function() openWarning,
    required TResult Function() openDoors,
    required TResult Function() openTrunk,
    required TResult Function() turnOnOffHighBeam,
    required TResult Function() turnOnOffLowBeam,
    required TResult Function(List<int>? code) openSettings,
    required TResult Function() viewWeather,
    required TResult Function() viewDevices,
    required TResult Function() sendSosSms,
  }) {
    return viewDevices();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? startEngine,
    TResult Function()? turnEmergencySignal,
    TResult Function()? openWarning,
    TResult Function()? openDoors,
    TResult Function()? openTrunk,
    TResult Function()? turnOnOffHighBeam,
    TResult Function()? turnOnOffLowBeam,
    TResult Function(List<int>? code)? openSettings,
    TResult Function()? viewWeather,
    TResult Function()? viewDevices,
    TResult Function()? sendSosSms,
    required TResult orElse(),
  }) {
    if (viewDevices != null) {
      return viewDevices();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDashboardEvent value) initial,
    required TResult Function(_StartEngineDashboardEvent value) startEngine,
    required TResult Function(_TurnEmergencySignalDashboardEvent value)
        turnEmergencySignal,
    required TResult Function(_OpenWarningDashboardEvent value) openWarning,
    required TResult Function(_OpenDoorsDashboardEvent value) openDoors,
    required TResult Function(_OpenTrunkDashboardEvent value) openTrunk,
    required TResult Function(_TurnOnOffHighBeamDashboardEvent value)
        turnOnOffHighBeam,
    required TResult Function(_TurnOnOffLowBeamDashboardEvent value)
        turnOnOffLowBeam,
    required TResult Function(_OpenSettingsDashboardEvent value) openSettings,
    required TResult Function(_ViewWeatherDashboardEvent value) viewWeather,
    required TResult Function(_ViewDevivesDashboardEvent value) viewDevices,
    required TResult Function(_SendSosSmsDashboardEvent value) sendSosSms,
  }) {
    return viewDevices(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDashboardEvent value)? initial,
    TResult Function(_StartEngineDashboardEvent value)? startEngine,
    TResult Function(_TurnEmergencySignalDashboardEvent value)?
        turnEmergencySignal,
    TResult Function(_OpenWarningDashboardEvent value)? openWarning,
    TResult Function(_OpenDoorsDashboardEvent value)? openDoors,
    TResult Function(_OpenTrunkDashboardEvent value)? openTrunk,
    TResult Function(_TurnOnOffHighBeamDashboardEvent value)? turnOnOffHighBeam,
    TResult Function(_TurnOnOffLowBeamDashboardEvent value)? turnOnOffLowBeam,
    TResult Function(_OpenSettingsDashboardEvent value)? openSettings,
    TResult Function(_ViewWeatherDashboardEvent value)? viewWeather,
    TResult Function(_ViewDevivesDashboardEvent value)? viewDevices,
    TResult Function(_SendSosSmsDashboardEvent value)? sendSosSms,
    required TResult orElse(),
  }) {
    if (viewDevices != null) {
      return viewDevices(this);
    }
    return orElse();
  }
}

abstract class _ViewDevivesDashboardEvent implements DashboardEvent {
  const factory _ViewDevivesDashboardEvent() = _$_ViewDevivesDashboardEvent;
}

/// @nodoc
abstract class _$SendSosSmsDashboardEventCopyWith<$Res> {
  factory _$SendSosSmsDashboardEventCopyWith(_SendSosSmsDashboardEvent value,
          $Res Function(_SendSosSmsDashboardEvent) then) =
      __$SendSosSmsDashboardEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$SendSosSmsDashboardEventCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res>
    implements _$SendSosSmsDashboardEventCopyWith<$Res> {
  __$SendSosSmsDashboardEventCopyWithImpl(_SendSosSmsDashboardEvent _value,
      $Res Function(_SendSosSmsDashboardEvent) _then)
      : super(_value, (v) => _then(v as _SendSosSmsDashboardEvent));

  @override
  _SendSosSmsDashboardEvent get _value =>
      super._value as _SendSosSmsDashboardEvent;
}

/// @nodoc

class _$_SendSosSmsDashboardEvent
    with DiagnosticableTreeMixin
    implements _SendSosSmsDashboardEvent {
  const _$_SendSosSmsDashboardEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardEvent.sendSosSms()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DashboardEvent.sendSosSms'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SendSosSmsDashboardEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() startEngine,
    required TResult Function() turnEmergencySignal,
    required TResult Function() openWarning,
    required TResult Function() openDoors,
    required TResult Function() openTrunk,
    required TResult Function() turnOnOffHighBeam,
    required TResult Function() turnOnOffLowBeam,
    required TResult Function(List<int>? code) openSettings,
    required TResult Function() viewWeather,
    required TResult Function() viewDevices,
    required TResult Function() sendSosSms,
  }) {
    return sendSosSms();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? startEngine,
    TResult Function()? turnEmergencySignal,
    TResult Function()? openWarning,
    TResult Function()? openDoors,
    TResult Function()? openTrunk,
    TResult Function()? turnOnOffHighBeam,
    TResult Function()? turnOnOffLowBeam,
    TResult Function(List<int>? code)? openSettings,
    TResult Function()? viewWeather,
    TResult Function()? viewDevices,
    TResult Function()? sendSosSms,
    required TResult orElse(),
  }) {
    if (sendSosSms != null) {
      return sendSosSms();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDashboardEvent value) initial,
    required TResult Function(_StartEngineDashboardEvent value) startEngine,
    required TResult Function(_TurnEmergencySignalDashboardEvent value)
        turnEmergencySignal,
    required TResult Function(_OpenWarningDashboardEvent value) openWarning,
    required TResult Function(_OpenDoorsDashboardEvent value) openDoors,
    required TResult Function(_OpenTrunkDashboardEvent value) openTrunk,
    required TResult Function(_TurnOnOffHighBeamDashboardEvent value)
        turnOnOffHighBeam,
    required TResult Function(_TurnOnOffLowBeamDashboardEvent value)
        turnOnOffLowBeam,
    required TResult Function(_OpenSettingsDashboardEvent value) openSettings,
    required TResult Function(_ViewWeatherDashboardEvent value) viewWeather,
    required TResult Function(_ViewDevivesDashboardEvent value) viewDevices,
    required TResult Function(_SendSosSmsDashboardEvent value) sendSosSms,
  }) {
    return sendSosSms(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDashboardEvent value)? initial,
    TResult Function(_StartEngineDashboardEvent value)? startEngine,
    TResult Function(_TurnEmergencySignalDashboardEvent value)?
        turnEmergencySignal,
    TResult Function(_OpenWarningDashboardEvent value)? openWarning,
    TResult Function(_OpenDoorsDashboardEvent value)? openDoors,
    TResult Function(_OpenTrunkDashboardEvent value)? openTrunk,
    TResult Function(_TurnOnOffHighBeamDashboardEvent value)? turnOnOffHighBeam,
    TResult Function(_TurnOnOffLowBeamDashboardEvent value)? turnOnOffLowBeam,
    TResult Function(_OpenSettingsDashboardEvent value)? openSettings,
    TResult Function(_ViewWeatherDashboardEvent value)? viewWeather,
    TResult Function(_ViewDevivesDashboardEvent value)? viewDevices,
    TResult Function(_SendSosSmsDashboardEvent value)? sendSosSms,
    required TResult orElse(),
  }) {
    if (sendSosSms != null) {
      return sendSosSms(this);
    }
    return orElse();
  }
}

abstract class _SendSosSmsDashboardEvent implements DashboardEvent {
  const factory _SendSosSmsDashboardEvent() = _$_SendSosSmsDashboardEvent;
}
