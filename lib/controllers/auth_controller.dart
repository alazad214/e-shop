import 'package:e_shop/pages/bottomNav.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AuthController extends GetxController {
  RxString name = RxString("");
  RxString email = RxString("");
  RxString password = RxString("");
  RxString confirmpassword = RxString("");
  final auth = FirebaseAuth.instance;
  final user = FirebaseAuth.instance.currentUser;
//Registation-------->>>
  register() async {
    if (password != confirmpassword) {
      Get.snackbar("Error", "Password doesn't matched",
          snackPosition: SnackPosition.BOTTOM);
      return;
    }
    try {
      await auth
          .createUserWithEmailAndPassword(
              email: email.value, password: password.value)
          .then((value) {
        if (value.user != null) {
          Get.offAll(() => Bottomnav());
        }
      });
    } on FirebaseAuthException catch (error) {
      Get.snackbar("Error", error.message ?? "Something Wrong");
    }
  }

  //Login-------------->>>>>

  login() async {
    try {
      await auth
          .signInWithEmailAndPassword(
              email: email.value, password: password.value)
          .then((value) {
        if (value.user != null) {
          Get.offAll(Bottomnav());
        }
      });
    } on FirebaseAuthException catch (error) {
      Get.snackbar("Error", error.message ?? "Something Wrong");
    }
  }
}
