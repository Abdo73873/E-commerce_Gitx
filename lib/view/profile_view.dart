import 'package:ecommerce_app/core/view_model/auth_view_model.dart';
import 'package:ecommerce_app/view/auth/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GetBuilder<AuthViewModel>(
          init:AuthViewModel(),
          builder: (controller) {
            return IconButton(
              onPressed: (){
                controller.logout();
                Get.off(LoginView());
              },
              icon: Icon(Icons.logout),
            );
          }
        ),
      ),
    );
  }
}
