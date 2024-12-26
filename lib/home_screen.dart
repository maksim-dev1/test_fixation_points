import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_fixed_points/bloc/fixation_bloc.dart';
import 'package:test_fixed_points/painter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
             
            },
            icon: Icon(Icons.sensors)),
        title: const Text('Fixation Points'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              context.read<FixationBloc>().add(FixationEvent.clear());
            },
            icon: const Icon(Icons.delete_rounded),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: BlocBuilder<FixationBloc, FixationState>(
                builder: (context, state) {
                  return state.maybeMap(
                    orElse: () => const Center(
                      child: Text('Add point'),
                    ),
                    loadInProgress: (state) => Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const CircularProgressIndicator(),
                          const SizedBox(height: 8),
                          Text(state.massage),
                        ],
                      ),
                    ),
                    fixation: (state) {
                      return Column(
                        children: [
                          // CustomPaint для отрисовки линий
                          SizedBox(
                            width: 200,
                            height: 150,
                            child: DecoratedBox(
                              decoration: BoxDecoration(color: Colors.amber),
                              child: CustomPaint(
                                size: Size.infinite,
                                painter: PathPainter(state.positionsGeo),
                              ),
                            ),
                          ),
                          // Список точек
                          Expanded(
                            child: ListView.builder(
                              itemCount: state.positionsGeo.length,
                              itemBuilder: (context, index) {
                                final position = state.positionsGeo[index];
                                return Text(
                                    'Point ${index + 1}: ${position.latitude}, ${position.longitude}');
                              },
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  context
                      .read<FixationBloc>()
                      .add(FixationEvent.fixationPointGeolocator());
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(100),
                  backgroundColor: Colors.orange,
                ),
                child: const Text(
                  'Fixation Point',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
