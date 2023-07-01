// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'advice_bloc.dart';

class AdviceState extends Equatable {
  final String name;
  final String email;
  final String phone;
  final String content;

  const AdviceState({
    required this.name,
    required this.email,
    required this.phone,
    required this.content,
  });

  @override
  List<Object?> get props => [
        name,
        email,
        phone,
        content,
      ];

  AdviceState copyWith({
    String? name,
    String? email,
    String? phone,
    String? content,
  }) {
    return AdviceState(
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      content: content ?? this.content,
    );
  }
}
