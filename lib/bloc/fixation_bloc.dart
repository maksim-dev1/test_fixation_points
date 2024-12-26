import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'fixation_event.dart';
part 'fixation_state.dart';
part 'fixation_bloc.freezed.dart';

class FixationBloc extends Bloc<FixationEvent, FixationState> {
  FixationBloc() : super(_Initial()) {
    on<FixationEvent>((event, emit) => event.map(
          fixationPointGeolocator: (event) =>
              _fixationPointGeolocator(emit: emit),
          fixationPointSensors: (event) => _fixationPointSensors(),
          clear: (event) => _clear(emit: emit),
        ));
  }

  Future<void> _fixationPointGeolocator(
      {required Emitter<FixationState> emit}) async {
    bool serviceEnabled;
    LocationPermission permission;

    try {
      emit(FixationState.loadInProgress(
          positionsGeo: state.getPositionsGeo, massage: 'Loading...'));
      // Проверяем, включена ли геолокация
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        print('Геолокация выключена');
        return;
      }

      // Запрашиваем разрешение на доступ к геопозиции
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          print('Разрешение на доступ к геопозиции отклонено');
          return;
        }
      }

      // Получаем текущие координаты
      Position position = await Geolocator.getCurrentPosition();

      final List<Position> statePositionsGeo = state.getPositionsGeo;

      final List<Position> updatePositionsGeo = [...statePositionsGeo];

      updatePositionsGeo.add(position);

      emit(FixationState.fixation(positionsGeo: updatePositionsGeo));
    } catch (e) {
      emit(FixationState.failure(massage: 'Error $e'));
      throw Exception(e);
    }
  }

  Future<void> _fixationPointSensors() async {}

  Future<void> _clear({required Emitter<FixationState> emit}) async {
    try {
      emit(FixationState.fixation(positionsGeo: []));
    } catch (e) {
      emit(FixationState.failure(massage: 'Error $e'));
      throw Exception(e);
    }
  }
}
