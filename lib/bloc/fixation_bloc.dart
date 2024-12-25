import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'fixation_event.dart';
part 'fixation_state.dart';
part 'fixation_bloc.freezed.dart';

class FixationBloc extends Bloc<FixationEvent, FixationState> {
  FixationBloc() : super(_Initial()) {
    on<FixationEvent>((event, emit) => event.map(
          fixationPointGeolocator: (event) => _fixationPointGeolocator(),
          fixationPointSensors: (event) => _fixationPointSensors(),
        ));
  }

  Future<void> _fixationPointGeolocator() async {
    bool serviceEnabled;
    LocationPermission permission;

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
    print('Широта: ${position.latitude}, Долгота: ${position.longitude}');
  }

  Future<void> _fixationPointSensors() async {}
}
