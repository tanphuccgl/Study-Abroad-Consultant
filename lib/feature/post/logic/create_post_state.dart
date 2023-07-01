// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'create_post_bloc.dart';

class CreatePostState extends Equatable {
  final String title;
  final String des;
  final String date;
  final String location;

  const CreatePostState(
      {required this.title,
      required this.des,
      required this.date,
      required this.location});

  @override
  List<Object?> get props => [title, des, date, location];

  CreatePostState copyWith({
    String? title,
    String? des,
    String? date,
    String? location,
  }) {
    return CreatePostState(
      title: title ?? this.title,
      des: des ?? this.des,
      date: date ?? this.date,
      location: location ?? this.location,
    );
  }
}
