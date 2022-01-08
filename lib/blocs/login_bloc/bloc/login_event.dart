part of 'login_bloc.dart';

@immutable
abstract class LoginEvent extends Equatable {}

class LoginInit extends LoginEvent {
  @override
  List<Object> get props => [];
}

class LoginSubmit extends LoginEvent {
  final String email;
  final String password;

  LoginSubmit({required this.email, required this.password});

  @override
  List<Object> get props => [email, password];
}
