import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theshapeofgirls/model/girl.dart';
import 'package:http/http.dart' as http;
import 'package:theshapeofgirls/model/girls_container.dart';

part "girls_bloc_event.dart";

part 'girls_bloc_state.dart';

class GirlsBloc extends Bloc<GirlsBlocEvent, GirlsBlocState> {
  @override
  // TODO: implement initialState
  GirlsBlocState get initialState => GirlsLoading();

  @override
  Stream<GirlsBlocState> mapEventToState(GirlsBlocEvent event) async* {
    if (event is FetchGirls) {
      try {
        List<Girl> girls = GirlsContainer.fromJson(jsonDecode((await http.get(
                    'https://kingd1412.000webhostapp.com/api.php/get_data'))
                .body))
            .girls;

        yield GirlsSuccess(girls);
      } catch (e) {
        throw e;
      }
    }
  }
}
