// ignore_for_file: public_member_api_docs, sort_constructors_first
part of "update_profile_bloc.dart";

class UpdateProfileState extends Equatable {
  final String name;
  final String email;
  final String phone;
  final String location;
   final String username;

  const UpdateProfileState({
    this.name = "",
    this.email = "",
    this.phone = "",
    this.location = "",
    this.username= "",
  });

  @override
  List<Object?> get props => [name, email, phone, location,username];

  UpdateProfileState copyWith({
    String? name,
    String? email,
    String? phone,
    String? location,
    String? username,
  }) {
    return UpdateProfileState(
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      location: location ?? this.location,
      username:username??this.username,
    );
  }
}
