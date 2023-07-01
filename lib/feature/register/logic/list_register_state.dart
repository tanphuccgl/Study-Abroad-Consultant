// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'list_register_bloc.dart';

class ListRegisterState extends Equatable {
  final List<Register> events;

  const ListRegisterState(this.events);

  @override
  List<Object?> get props => [events];

  ListRegisterState copyWith({
    List<Register>? events,
  }) {
    return ListRegisterState(
      events ?? this.events,
    );
  }
}
