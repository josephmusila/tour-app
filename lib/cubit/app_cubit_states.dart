import 'package:equatable/equatable.dart';
import 'package:flutter_cubit/model/data_model.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  @override
  List<Object> get props => [];
}

class WelcomeState extends CubitStates {
  @override
  List<Object> get props => [];
}

class LoadingState extends CubitStates {
  @override
  List<Object> get props => [];
}

class LoadedState extends CubitStates {
  final List<Dartmodel> places;

  LoadedState(this.places);
  @override
  List<Object> get props => [places];
}

class DetailState extends CubitStates {
  final Dartmodel place;

  DetailState(this.place);
  @override
  List<Object> get props => [place];
}

