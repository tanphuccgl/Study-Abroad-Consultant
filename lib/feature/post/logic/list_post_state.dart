// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'list_post_bloc.dart';

class ListPostState extends Equatable {
  final List<Post> events;

  const ListPostState(this.events);

  @override
  List<Object?> get props => [events];

  ListPostState copyWith({
    List<Post>? events,
  }) {
    return ListPostState(
      events ?? this.events,
    );
  }
}
