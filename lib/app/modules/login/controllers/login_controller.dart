import 'package:covid19/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  RxBool isHidden = true.obs;
  RxBool isLoading = false.obs;
  RxBool rememberme = false.obs;

  final box = GetStorage();

  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  Map<String, String> account = {
    "email": "admin@gmail.com",
    "pass": "admin",
  };

  void login() async {
    if (emailC.text.isNotEmpty && passC.text.isNotEmpty) {
      if (emailC.text == account["email"]) {
        if (passC.text == account["pass"]) {
          // proses
          await Future.delayed(Duration(seconds: 2));
          isLoading.value = false;

          if (box.read("rememberme") != null) {
            box.remove("rememberme");
          }

          if (rememberme.isTrue) {
            box.write(
              'rememberme',
              {
                "email": emailC.text,
                "pass": passC.text,
              },
            );
          }

          Get.offAllNamed(Routes.HOME);
        } else {
          isLoading.value = false;
          Get.snackbar("Terjadi Kesalahan", "Password salah.");
        }
      } else {
        isLoading.value = false;
        Get.snackbar("Terjadi Kesalahan", "Email tidak terdaftar.");
      }
    } else {
      isLoading.value = false;
      Get.snackbar("Terjadi Kesalahan", "Semua input harus diisi.");
    }
  }
}
