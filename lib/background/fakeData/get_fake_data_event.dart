part of 'get_fake_data_bloc.dart';

@immutable
abstract class GetFakeDataEvent {}

class GetFakeDateInitialEvent extends GetFakeDataEvent {}
class LikedEvent extends GetFakeDataEvent {
  final FakeDataModel likedItem;

  LikedEvent({required this.likedItem});
}
