import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task_10_11/widgets/registration_button.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff8C4AE2), Color(0xff743BD1)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),      
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 117.h,
              ),
              Image.asset(
                "assets/images/ezy.png",
                width: 90.w,
                height: 90.h,
              ),
              SizedBox(
                height: 70.h,
              ),
              const Text(
                "Добро пожаловать!",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(
                height: 30.h,
              ),
              const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Приветствуем вас на площадке аренды строительной техники",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  )),
              SizedBox(
                height: 70.h,
              ),
              RegistrationButton(
                text: "Регистрация",
                bg: Colors.white.withOpacity(0.0),
              ),
              SizedBox(height: 10.h,),
              TextButton(onPressed: (){}, child: const Text("У меня уже есть аккаунт",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),)),
              const Spacer(),
              RegistrationButton(text: "Магазин автозапчастей",width: 168,height: 34,bg: Colors.white.withOpacity(0.0),fontSize: 12,),
              SizedBox(height: 30.h,)
              
            ],
          ),
        ),
      ),
    );
  }
}


  