// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'register_bloc.dart';

class RegisterState extends Equatable {
  final String name;
  final String email;
  final String phone;
  final String location;
  final String nation;
  final String school;
  final String majors;
  final String target;
  final String experience;
  final String opinion;
  const RegisterState({
    required this.name,
    required this.email,
    required this.phone,
    required this.location,
    required this.nation,
    required this.school,
    required this.majors,
    required this.target,
    required this.experience,
    required this.opinion,
  });

  @override
  List<Object?> get props => [
        name,
        email,
        phone,
        location,
        nation,
        school,
        majors,
        target,
        experience,
        opinion,
      ];

  RegisterState copyWith({
    String? name,
    String? email,
    String? phone,
    String? location,
    String? nation,
    String? school,
    String? majors,
    String? target,
    String? experience,
    String? opinion,
  }) {
    return RegisterState(
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      location: location ?? this.location,
      nation: nation ?? this.nation,
      school: school ?? this.school,
      majors: majors ?? this.majors,
      target: target ?? this.target,
      experience: experience ?? this.experience,
      opinion: opinion ?? this.opinion,
    );
  }
}
