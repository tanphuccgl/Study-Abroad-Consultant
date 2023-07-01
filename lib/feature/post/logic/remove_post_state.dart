// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'remove_post_bloc.dart';

class RemovePostState extends Equatable {
  final List<Post> events;

  const RemovePostState(this.events);

  @override
  List<Object?> get props => [events];

  RemovePostState copyWith({
    List<Post>? events,
  }) {
    return RemovePostState(
      events ?? this.events,
    );
  }
}
