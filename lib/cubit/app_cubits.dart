import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/app_cubit_states.dart';
import 'package:flutter_cubit/model/data_model.dart';
import 'package:flutter_cubit/services/data_services.dart';

class AppCubit extends Cubit<CubitStates> {
  AppCubit({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }
  final DataService data;

  late final places;

  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();

      emit(LoadedState(places));
    } catch (e) {}
  }

  detailpage(Dartmodel data) {
    emit(DetailState(data));
  }

  goHome() {
    emit(LoadedState(places));
  }
}
