import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Defaultbotton extends StatelessWidget {
  Defaultbotton(
      {this.background = Colors.blue,
        this.width = double.infinity,
        required this.text,
        this.radius = 5.0,
        required this.onPress});
  final double width;
  final Color background;
  final String text;
  final double radius;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.indigo,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: MaterialButton(
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        onPressed: onPress,
      ),
    );
  }
}

void showToast({
  required String message,
  required ToastState state,
  required Color colorText,
}) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: chooseToastColor(state),
      textColor: colorText,
      fontSize: 16.0);
}

enum ToastState { SUCCESS, ERROR, WARRING }

Color chooseToastColor(ToastState state) {
  Color color;

  switch (state) {
    case ToastState.SUCCESS:
      color = Colors.green;
      break;
    case ToastState.ERROR:
      color = Colors.red;
      break;
    case ToastState.WARRING:
      color = Colors.blue;
      break;
  }
  return color;
}



class CostumTextFormFeild extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType type;
  final String label;
  final dynamic onSubmit;
  final dynamic onChange;
  final dynamic onTap;
  final dynamic validate;
  final dynamic prefix;
  final dynamic suffix;
  final dynamic suffixPressed;
  final bool isPassword;

  CostumTextFormFeild({
    required this.label,
    required this.controller,
    required this.type,
    required this.prefix,
    this.onSubmit,
    this.onChange,
    required this.validate,
    this.onTap,
    this.suffixPressed,
    this.suffix,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      validator: validate,
      obscureText: isPassword,
      decoration: InputDecoration(
        suffixIcon: Icon(suffix),
        prefixIcon: GestureDetector(
          onTap: suffixPressed,
          child: Icon(
            prefix,
          ),
        ),
        labelText: label,
        border: const OutlineInputBorder(),
      ),
    );
  }

}

Widget demoDates(String day, String date, bool isSelected) {
  return isSelected ? Container(
    width: 70,
    margin: const EdgeInsets.only(right: 15),
    decoration: BoxDecoration(
      color: const Color(0xff107163),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Text(
            day,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.all(7),
          child: Text(
            date,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ],
    ),
  ) : Container(
    width: 70,
    margin: const EdgeInsets.only(right: 15),
    decoration: BoxDecoration(
      color: const Color(0xffEEEEEE),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Text(
            day,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.all(7),
          child: Text(
            date,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ],
    ),
  );
}

Widget doctorTimingsData(String time, bool isSelected) {
  return isSelected ? Container(
    margin: const EdgeInsets.only(left: 20, top: 10),
    decoration: BoxDecoration(
      color: const Color(0xff107163),
      borderRadius: BorderRadius.circular(5),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 2),
          child: const Icon(
            Icons.access_time,
            color: Colors.white,
            size: 18,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 2),
          child: const Text('08:30 AM',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontFamily: 'Roboto',
            ),
          ),
        ),
      ],
    ),
  ) : Container(
    margin: const EdgeInsets.only(left: 20, top: 10),
    decoration: BoxDecoration(
      color: const Color(0xffEEEEEE),
      borderRadius: BorderRadius.circular(5),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 2),
          child: const Icon(
            Icons.access_time,
            color: Colors.black,
            size: 18,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 2),
          child: const Text('08:30 AM',
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontFamily: 'Roboto',
            ),
          ),
        ),
      ],
    ),
  );
}
