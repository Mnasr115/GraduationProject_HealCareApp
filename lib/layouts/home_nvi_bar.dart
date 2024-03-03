import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../shared/cubit/cubit.dart';
import '../shared/cubit/states.dart';

class home_nvi_bar extends StatefulWidget {
  const home_nvi_bar({Key? key}) : super(key: key);

  @override
  State<home_nvi_bar> createState() => _home_nvi_barState();
}

class _home_nvi_barState extends State<home_nvi_bar> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext context, AppStates state) {  },
        builder: (BuildContext context, state) {
          AppCubit cubit = AppCubit.get(context);
          return Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
              iconTheme: Theme.of(context).iconTheme,
              leading: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
              title:  Text(
                cubit.titles[cubit.currentIndex],
              ),
            ),
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              showSelectedLabels: false,
              elevation: 0.0,
              type: BottomNavigationBarType.fixed,
              currentIndex: cubit.currentIndex,
              onTap: (index){
                cubit.changeIndex(index);
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.chat,
                  ),
                  label: 'chat',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.more_horiz_sharp,
                  ),
                  label: 'More',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

