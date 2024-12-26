part of 'fixation_bloc.dart';

@freezed
class FixationEvent with _$FixationEvent {
  const factory FixationEvent.fixationPointGeolocator() = _FixationPointGeolocator;
  const factory FixationEvent.fixationPointSensors() = _FixationPointSensors;
  const factory FixationEvent.clear() = _Clear;
}