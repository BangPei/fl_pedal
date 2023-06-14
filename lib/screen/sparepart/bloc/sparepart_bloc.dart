import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sparepart_event.dart';
part 'sparepart_state.dart';

class SparepartBloc extends Bloc<SparepartEvent, SparepartState> {
  SparepartBloc() : super(SparepartInitial()) {
    on<SparepartEvent>((event, emit) {});
  }
}
