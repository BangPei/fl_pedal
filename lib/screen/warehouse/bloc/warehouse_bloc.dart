import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'warehouse_event.dart';
part 'warehouse_state.dart';

class WarehouseBloc extends Bloc<WarehouseEvent, WarehouseState> {
  WarehouseBloc() : super(WarehouseInitial()) {
    on<WarehouseEvent>((event, emit) {});
  }
}
