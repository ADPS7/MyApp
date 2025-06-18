import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) async {
      emit(HomeLoadProgress());
      final url = Uri.parse('...');
      final response = await http.get(url);
      if (response.statusCode == 201) {
        emit(HomeLoadSucces());
      }else{
        emit(HomeLoadFailure());
      }
    });
  }
}
