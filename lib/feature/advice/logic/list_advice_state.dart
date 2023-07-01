// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'list_advice_bloc.dart';

class ListAdviceState extends Equatable {
  final List<Advice> events;

  const ListAdviceState(this.events);

  @override
  List<Object?> get props => [events];

  ListAdviceState copyWith({
    List<Advice>? events,
  }) {
    return ListAdviceState(
      events ?? this.events,
    );
  }
}
