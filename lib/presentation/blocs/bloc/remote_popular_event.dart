part of 'remote_popular_bloc.dart';

@immutable
abstract class RemotePopularEvent extends Equatable {
  const RemotePopularEvent();
  @override
  List<Object> get props => [];
}
class GetPopularTopic extends RemotePopularEvent{
  const GetPopularTopic();
}



