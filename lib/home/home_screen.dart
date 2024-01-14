import 'package:bloc_cubit_demo_app/home/home_cubit.dart';
import 'package:bloc_cubit_demo_app/home/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final screenCubit = HomeCubit();

  @override
  Widget build(BuildContext context) {
    screenCubit.loadInitialData();
    return Scaffold(
      body: BlocConsumer<HomeCubit, HomeState>(
        bloc: screenCubit,
        listener: (BuildContext context, HomeState state) {
          if (state.error != null) {
            // TODO your code here
          }
        },
        builder: (BuildContext context, HomeState state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          return buildBody(state);
        },
      ),
    );
  }

  Widget buildBody(HomeState state) {
    return const Center(
      child: Text("data"),
    );
  }
}
