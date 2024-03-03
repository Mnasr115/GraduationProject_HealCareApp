
import 'package:final_project/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../layouts/home_screen/home_screen.dart';
import '../../modules/healthcare_app/chat/chat_screen.dart';
import '../../modules/healthcare_app/settings/settings_screen.dart';


class AppCubit extends Cubit<AppStates>
{
  AppCubit() : super(AppInitialStates());

  static AppCubit get(context) => BlocProvider.of(context);

  int  currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    ChatScreen(),
    SettingsScreen(),
  ];
  List<String> titles = [
    'Home',
    'Chat',
    'Settings'
  ];

  void changeIndex (int index){
    currentIndex = index;
    emit(AppChangeBottomNavBarState());
  }

  int current = 0 ;
  List imageList = [
    'assets/images/Doctor-PNG-Clipart.png',
    'assets/images/Doctor-PNG-Clipart.png',
    'assets/images/Doctor-PNG-Clipart.png',
    'assets/images/Doctor-PNG-Clipart.png',
    'assets/images/Doctor-PNG-Clipart.png',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i=0; i<list.length;i++)
    {
      result.add(handler(i,list[i]));
    }
    return result;
  }

  void changeCurrent (int index){
    current = index;
    emit(AppChangeBottomNavBarState());
  }


}