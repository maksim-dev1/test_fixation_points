part of 'fixation_bloc.dart';

@freezed
class FixationState with _$FixationState {
  const FixationState._();
  List<Position> get getPositionsGeo => maybeMap(
        orElse: () => [],
        loadInProgress: (state) => state.positionsGeo,
        fixation: (state) => state.positionsGeo,
      );

  const factory FixationState.initial() = _Initial;

  const factory FixationState.loadInProgress({
    required List<Position> positionsGeo,
    required String massage,
  }) = _LoadInProgress;
  const factory FixationState.fixation({required List<Position> positionsGeo}) =
      _Fixation;
  const factory FixationState.failure({required String massage}) = _Failure;
}
