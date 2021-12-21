import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    if (box.read("rememberme") != null) {
      controller.emailC.text = box.read("rememberme")["email"];
      controller.passC.text = box.read("rememberme")["pass"];
      controller.rememberme.value = true;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginView'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: controller.emailC,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 15),
          Obx(
            () => TextField(
              controller: controller.passC,
              autocorrect: false,
              obscureText: controller.isHidden.value,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () => controller.isHidden.toggle(),
                  icon: Icon(
                    controller.isHidden.isTrue ? Icons.remove_red_eye : Icons.remove_red_eye_outlined,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Obx(
            () => CheckboxListTile(
              value: controller.rememberme.value,
              onChanged: (value) => controller.rememberme.toggle(),
              title: Text("Remember me"),
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),
          SizedBox(height: 25),
          Obx(
            () => ElevatedButton(
              onPressed: () {
                if (controller.isLoading.isFalse) {
                  controller.isLoading.value = true;
                  controller.login();
                }
              },
              child: controller.isLoading.isFalse ? Text("LOGIN") : CircularProgressIndicator.adaptive(),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(Get.width, 60),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
