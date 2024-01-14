import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_cubit_demo_app/home/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  Future<void> loadInitialData() async {
    try {
      emit(state.copyWith(isLoading: true));

      await Future.delayed(const Duration(seconds: 1));

      emit(state.copyWith(isLoading: false));
    } catch (error) {
      emit(state.copyWith(error: error.toString()));
    }
  }
}
