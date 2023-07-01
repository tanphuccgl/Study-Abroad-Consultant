// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'list_register_event_bloc.dart';

class ListRegisterEventState extends Equatable {
  final List<RegisterEvent> events;

  const ListRegisterEventState(this.events);

  @override
  List<Object?> get props => [events];

  ListRegisterEventState copyWith({
    List<RegisterEvent>? events,
  }) {
    return ListRegisterEventState(
      events ?? this.events,
    );
  }
}
