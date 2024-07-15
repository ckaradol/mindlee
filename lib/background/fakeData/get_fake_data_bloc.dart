import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:mindlee2/model/fake_data_model.dart';

import '../load_json_file.dart';

part 'get_fake_data_event.dart';

part 'get_fake_data_state.dart';

class GetFakeDataBloc extends Bloc<GetFakeDataEvent, GetFakeDataState> {
  GetFakeDataBloc() : super(GetFakeDataInitial());
  List<FakeDataModel> localData=[];
  @override
  Stream<GetFakeDataState> mapEventToState(
    GetFakeDataEvent event,
  ) async* {
    if (event is GetFakeDateInitialEvent) {
      List<FakeDataModel> data = await loadJsonFile();
      localData.addAll(data);
      localData.sort((e,a)=>(e.id??0).compareTo(a.id??0));
      yield GetFakeDataLoad(fakeData: localData);
    } if (event is LikedEvent) {
       localData.remove(event.likedItem);
       localData.add(event.likedItem);
       localData.sort((e,a)=>(e.id??0).compareTo(a.id??0));
      yield GetFakeDataLoad(fakeData: localData);
    }
  }
}
