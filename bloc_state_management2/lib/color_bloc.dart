import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

enum ColorEvent { to_amber, to_lightblue }

class ColorBloc extends HydratedBloc<ColorEvent, Color> {
  // ColorBloc(Color initialState) : super(initialState);
  // Color _color = Colors.amber;

  // ColorBloc(super.initialState);

  // ColorBloc() : super(Colors.amber);

  // Color? get initialState => super.initialState ?? Colors.amber;  /// tidak relate, terjadi error

  ColorBloc() : super(Colors.amber);

  Stream<Color>? mapEventToState(ColorEvent event) async* {
    yield (event == ColorEvent.to_amber) ? Colors.amber : Colors.lightBlue;
  }

  @override
  Color? fromJson(Map<String, dynamic> json) {
    try {
      return Color(json['color'] as int);
    } catch (_) {
      return null;
    }
    
  }

  @override
  Map<String, dynamic>? toJson(Color state) {
    try {
      return {'color': state.value};
    } catch (_) {
      return null;
    }
    
  }
}
