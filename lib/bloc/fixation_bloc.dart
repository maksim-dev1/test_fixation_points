import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sensors_plus/sensors_plus.dart';

part 'fixation_event.dart';
part 'fixation_state.dart';
part 'fixation_bloc.freezed.dart';

class FixationBloc extends Bloc<FixationEvent, FixationState> {
  FixationBloc() : super(_Initial()) {
    on<FixationEvent>((event, emit) => event.map(
          fixationPointGeolocator: (event) =>
              _fixationPointGeolocator(emit: emit),
          fixationPointSensors: (event) => _fixationPointSensors(emit: emit),
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
      Position position = await Geolocator.getCurrentPosition(
        locationSettings: LocationSettings(
          accuracy: LocationAccuracy.bestForNavigation 
        ),
      
      );

      final List<Position> statePositionsGeo = state.getPositionsGeo;

      final List<Position> updatePositionsGeo = [...statePositionsGeo];

      updatePositionsGeo.add(position);

      emit(FixationState.fixation(positionsGeo: updatePositionsGeo));
    } catch (e) {
      emit(FixationState.failure(massage: 'Error $e'));
      throw Exception(e);
    }
  }

Future<void> _fixationPointSensors({required Emitter<FixationState> emit}) async {
    try {
      // Ожидаем данные с датчиков (акселерометра, гироскопа, магнитного датчика)
      List<StreamSubscription> sensorSubscriptions = [];

      // Подписываемся на данные с акселерометра
      StreamSubscription<AccelerometerEvent> accelerometerSubscription =
          accelerometerEvents.listen((AccelerometerEvent event) {
        // Сохраняем данные акселерометра в состояние или используем их для вычислений
        print('Accelerometer: x=${event.x}, y=${event.y}, z=${event.z}');
      });

      // Подписываемся на данные гироскопа
      StreamSubscription<GyroscopeEvent> gyroscopeSubscription =
          gyroscopeEvents.listen((GyroscopeEvent event) {
        // Сохраняем данные гироскопа в состояние или используем их для вычислений
        print('Gyroscope: x=${event.x}, y=${event.y}, z=${event.z}');
      });

      // Подписываемся на данные магнитного датчика
      StreamSubscription<MagnetometerEvent> magnetometerSubscription =
          magnetometerEvents.listen((MagnetometerEvent event) {
        // Сохраняем данные магнитного датчика в состояние или используем их для вычислений
        print('Magnetometer: x=${event.x}, y=${event.y}, z=${event.z}');
      });

      // Добавляем подписки в список для отмены позже
      sensorSubscriptions.add(accelerometerSubscription);
      sensorSubscriptions.add(gyroscopeSubscription);
      sensorSubscriptions.add(magnetometerSubscription);

      // Добавляем задержку или определённую логику для сбора данных
      await Future.delayed(Duration(seconds: 5));  // Пример задержки для сбора данных

      // Отменяем подписки
      for (var subscription in sensorSubscriptions) {
        await subscription.cancel();
      }

      // Пример добавления фиксации точки с использованием датчиков
      final sensorData = [/* здесь данные с датчиков, которые можно обработать */];

      emit(FixationState.fixation(positionsGeo: state.getPositionsGeo));

    } catch (e) {
      emit(FixationState.failure(massage: 'Error $e'));
      throw Exception(e);
    }
  }


  Future<void> _clear({required Emitter<FixationState> emit}) async {
    try {
      emit(FixationState.fixation(positionsGeo: []));
    } catch (e) {
      emit(FixationState.failure(massage: 'Error $e'));
      throw Exception(e);
    }
  }
}
