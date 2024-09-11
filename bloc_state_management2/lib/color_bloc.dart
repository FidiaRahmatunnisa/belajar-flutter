import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ColorEvent { to_amber, to_lightblue }

class ColorBloc extends Bloc<ColorEvent, Color> {
  // ColorBloc(Color initialState) : super(initialState);
  Color _color = Colors.amber;

  ColorBloc(super.initialState);

  Color? get initialState => Colors.amber;

  Stream<Color>? mapEventToState(ColorEvent event) async* {
    _color = (event == ColorEvent.to_amber) ? Colors.amber : Colors.lightBlue;
    yield _color;
  }
}
