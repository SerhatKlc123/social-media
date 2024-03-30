import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quick_connect/screens/auth/register.dart';

class ObController extends GetxController {
  final _box = GetStorage();
  final index = 0.obs;
  final animations = [
    'animations/ob1.json',
    'animations/ob2.json',
    'animations/ob3.json'
  ];
  final title = ['ot1', 'ot2', 'ot3'];
  final subTitle = ['ost1', 'ost2', 'ost3'];
  void goNext() {
    index.value < 2 ? index.value++ : Get.offAll(() => RegisterScreen());
    index.value < 2 ? null : _box.write('page', 1);
  }

  void skip() {
    Get.offAll(() => RegisterScreen());
    index.value < 2 ? null : _box.write('page', 1);
  }
}
