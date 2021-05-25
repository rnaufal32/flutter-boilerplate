import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveService {
  void init() async {
    Hive.initFlutter();
    Hive.openBox('name');
  }

  void saveBox() {
    final box = Hive.box('name');
    box.put('key', 'value');
  }

  dynamic getBox() {
    final box = Hive.box('name');
    return box.get('key');
  }
}
