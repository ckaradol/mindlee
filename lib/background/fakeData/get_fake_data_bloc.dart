import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:mindlee2/model/fake_data_model.dart';

import '../load_json_file.dart';

part 'get_fake_data_event.dart';

part 'get_fake_data_state.dart';

class GetFakeDataBloc extends Bloc<GetFakeDataEvent, GetFakeDataState> {
  GetFakeDataBloc() : super(GetFakeDataInitial());

  @override
  Stream<GetFakeDataState> mapEventToState(
    GetFakeDataEvent event,
  ) async* {
    if (event is GetFakeDateInitialEvent) {
      List<FakeDataModel> data = await loadJsonFile();
      yield GetFakeDataLoad(fakeData: data);
    }
  }
}
