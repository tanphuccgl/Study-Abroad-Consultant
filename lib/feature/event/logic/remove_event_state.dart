// ignore_for_file: public_member_api_docs, sort_constructors_first
part of "remove_event_bloc.dart";

class RemoveEventState extends Equatable {
  final List<Event> events;

  const RemoveEventState(this.events);

  @override
  List<Object?> get props => [events];

  RemoveEventState copyWith({
    List<Event>? events,
  }) {
    return RemoveEventState(
      events ?? this.events,
    );
  }
}
