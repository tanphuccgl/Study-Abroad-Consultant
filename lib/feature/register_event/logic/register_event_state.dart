// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'register_event_bloc.dart';

class RegisterEventState extends Equatable {
  final String name;
  final String email;
  final String phone;

  const RegisterEventState({
    required this.name,
    required this.email,
    required this.phone,
  });

  @override
  List<Object?> get props => [
        name,
        email,
        phone,
      ];

  RegisterEventState copyWith({
    String? name,
    String? email,
    String? phone,
  }) {
    return RegisterEventState(
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
    );
  }
}
