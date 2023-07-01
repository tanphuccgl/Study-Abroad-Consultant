// ignore_for_file: public_member_api_docs, sort_constructors_first
part of "list_event_bloc.dart";

class ListEventState extends Equatable {
  final List<Event> events;

  const ListEventState(this.events);

  @override
  List<Object?> get props => [events];

  ListEventState copyWith({
    List<Event>? events,
  }) {
    return ListEventState(
      events ?? this.events,
    );
  }
}
