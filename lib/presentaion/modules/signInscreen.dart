import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otp2/domain/cubit/auth/authCubit.dart';
import 'package:otp2/domain/cubit/auth/authState.dart';

class SignInScreen extends StatelessWidget {
  TextEditingController controller =TextEditingController();
  @override

  Widget build(BuildContext context) {
    return BlocConsumer<PhoneAuthCubit,AuthStates>(
      listener: (context,state)
      {

      },
      builder:(context,state)=> Scaffold(

        body:
  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(controller: controller,),
            InkWell(
              onTap: ()
              {
                 PhoneAuthCubit.get(context).phoneAuth(controller.text);
              },
              child: Container(
              color: Colors.green,
                height: 50,
                width: 150,
                child: Center(
                  child: Text('Enter Phone'),
                ),
      ),
            )
            ],
  )
      ),
    );
  }
}
