import 'package:bento_app/src/app/pages/home/controller/home_controller.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

setupProviders() {
  getIt.registerSingleton<HomeController>(HomeController());
}
