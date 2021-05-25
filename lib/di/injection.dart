import 'package:flutter_bolierplate/data/local/hive_service.dart';
import 'package:flutter_bolierplate/data/network/api_provider.dart';
import 'package:get/get.dart';

void injectModule() {
  Get.put(HiveService().init());
  Get.put(HiveService());
  Get.put(ApiProvider());
}
