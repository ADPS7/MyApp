import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

import '../../data/models/libro.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeSearchPressed>((event, emit) async{
      emit(HomeLoadInProgress());
      final url = Uri.parse('https://run.mocky.io/v3/b709799d-bfea-4a7c-a598-1d58d99fa87e');
      final response = await http.get(url);
      if (response.statusCode == 200){
        Map objectMap = jsonDecode(response.body);
        Dato libro = Dato(objectMap);
        print(objectMap);
        emit(HomeLoadSuccess(libro));
      }else{
        emit(HomeLoadFailure());
      }

    });
  }
}
