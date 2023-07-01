// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'update_post_bloc.dart';

class UpdatePostState extends Equatable {
  final String title;
  final String des;
  final String date;
  final String location;

  const UpdatePostState(
      {required this.title,
      required this.des,
      required this.date,
      required this.location});

  @override
  List<Object?> get props => [title, des, date, location];

  UpdatePostState copyWith({
    String? title,
    String? des,
    String? date,
    String? location,
  }) {
    return UpdatePostState(
      title: title ?? this.title,
      des: des ?? this.des,
      date: date ?? this.date,
      location: location ?? this.location,
    );
  }
}
