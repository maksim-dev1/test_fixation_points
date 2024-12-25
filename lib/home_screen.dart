import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_fixed_points/bloc/fixation_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FixationBloc, FixationState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Fixation points'),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Spacer(),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      context
                          .read<FixationBloc>()
                          .add(FixationEvent.fixationPointGeolocator());
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(100),
                      backgroundColor: Colors.orange,
                    ),
                    child: Text(
                      'Fixation point',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
