part of 'get_fake_data_bloc.dart';

@immutable
abstract class GetFakeDataState {}

class GetFakeDataInitial extends GetFakeDataState {}
class GetFakeDataLoad extends GetFakeDataState {
  final List<FakeDataModel> fakeData;

  GetFakeDataLoad({required this.fakeData});
}
