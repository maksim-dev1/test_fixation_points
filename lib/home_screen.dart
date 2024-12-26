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
    return Scaffold(
      appBar: AppBar(
        title: Text('Fixation points'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                context.read<FixationBloc>().add(FixationEvent.clear());
              },
              icon: Icon(Icons.delete_rounded))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            BlocBuilder<FixationBloc, FixationState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () => Center(
                    child: Text('Add point'),
                  ),
                  loadInProgress: (state) {
                    return Center(
                      child: Column(
                        spacing: 4,
                        children: [
                          CircularProgressIndicator(),
                          Text(state.massage),
                        ],
                      ),
                    );
                  },
                  fixation: (state) {
                    return Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Text(
                              'Point $index: ${state.positionsGeo[index]}');
                        },
                        itemCount: state.positionsGeo.length,
                      ),
                    );
                  },
                );
              },
            ),
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
  }
}
