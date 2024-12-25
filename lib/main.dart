import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_fixed_points/bloc/fixation_bloc.dart';
import 'package:test_fixed_points/home_screen.dart';

void main() {
  runApp(MaterialApp(
      home: BlocProvider(
    create: (context) => FixationBloc(),
    child: HomeScreen(),
  )));
}
