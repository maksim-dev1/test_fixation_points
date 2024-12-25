part of 'fixation_bloc.dart';

@freezed
class FixationState with _$FixationState {
  const factory FixationState.initial() = _Initial;
  const factory FixationState.fixation() = _Fixation;
}
