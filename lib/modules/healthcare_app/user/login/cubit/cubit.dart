import 'package:bloc/bloc.dart';
import 'package:final_project/modules/healthcare_app/user/login/cubit/states.dart';
import 'package:final_project/shared/network/remote/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../shared/network/end_point.dart';

class LoginCubit extends Cubit<LoginStates>
{
  LoginCubit() : super(LoginInitialState());
  // هعمل اوبجكت مني عشان استخدمني ف كذا مكان
  static LoginCubit get(context) => BlocProvider.of(context);

  void userLogin ({
  required String email,
    required String password,
})
  {
    emit(LoginLoadingState());
    DioHelper.postData(
        url: LOGIN,
        data: {
          'email': email,
          'password': password,
        },
    ).then((value) {
      print(value.data);
      emit(LoginSuccessState());// عشان حلصت
    }).catchError((error){
      emit(LoginErrorState(error.toString()));
    });
  }
}