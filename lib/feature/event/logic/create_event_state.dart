// ignore_for_file: public_member_api_docs, sort_constructors_first
part of "create_event_bloc.dart";

class CreateEventState extends Equatable {
  final String title;
  final String des;
  final String date;
  final String location;

  const CreateEventState(
      {required this.title,
      required this.des,
      required this.date,
      required this.location});

  @override
  List<Object?> get props => [title, des, date, location];

  CreateEventState copyWith({
    String? title,
    String? des,
    String? date,
    String? location,
  }) {
    return CreateEventState(
      title: title ?? this.title,
      des: des ?? this.des,
      date: date ?? this.date,
      location: location ?? this.location,
    );
  }
}
