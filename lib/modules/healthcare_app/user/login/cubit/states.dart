//  هعمل ابستلاكت عشامن اخد منه اوبجكت

abstract class LoginStates {}

 /// معايا 3  states

class LoginInitialState extends LoginStates {}

class LoginLoadingState extends LoginStates {}

class LoginSuccessState extends LoginStates {}

class LoginErrorState extends LoginStates {
  // هبعت الايرور عشان اظهره ع السكرين
  final String error;
  LoginErrorState(this.error);
}
