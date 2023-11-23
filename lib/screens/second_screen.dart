import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task_10_11/widgets/above_text_field.dart';
import 'package:flutter_task_10_11/widgets/registration_button.dart';
import 'package:flutter_task_10_11/widgets/text_field_button.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff8C4AE2), 
        toolbarHeight: 50,
        elevation: 0,
        
        title: const Align(
          
          child: Text(
            "Регистрация",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white,),textAlign: TextAlign.center,
          ),
        ),
        leading: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 22.h,
              child: IconButton( color: const Color(0xff8C4AE2), onPressed: () { Navigator.pop(context); }, icon: const Icon(Icons.arrow_back),),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff8C4AE2), Color(0xff743BD1)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              const AboveTextField(textAbove: "Фамилия",),
              SizedBox(
                height: 5.h,
              ),
              const TextFieldButton(hintText: "Иванов",),
               SizedBox(
                height: 5.h,
              ),
              const AboveTextField(textAbove: "Имя",),
              SizedBox(
                height: 5.h,
              ),
              const TextFieldButton(hintText: "Иван",),
               SizedBox(
                height: 5.h,
              ),
              const AboveTextField(textAbove: "Номер телефона",),
              SizedBox(
                height: 5.h,
              ),
              const TextFieldButton(hintText: "(+996) 500 000 000",keyboard: TextInputType.phone,),
               SizedBox(
                height: 5.h,
              ),
              const AboveTextField(textAbove: "Пароль",),
              SizedBox(
                height: 5.h,
              ),
              const TextFieldButton(hintText: "*******",suffixText: Icon(Icons.visibility,color: Colors.white,),),
              SizedBox(height: 30.h,),
              const RegistrationButton(text: "Зарегистрироваться",textColor: Color(0xff8C4AE2),)
              
            ],
          ),
        ),
      ),
    );
  }
}




