import 'package:bento_app/model/category_model.dart';
import 'package:bento_app/model/product_model.dart';
import 'package:bento_app/services/return_api/api_result.dart';
import 'package:bento_app/services/show_toast/show_toast.dart';
import 'package:bento_app/src/app/pages/home/repository/home_repository.dart';
import 'package:flutter/material.dart';

class HomeController with ChangeNotifier {
  List<Category> categories = [];
  List<Product> products = [];
  bool _loading = false;
  bool get loading => _loading;
  final HomeRepository _homeRepository = HomeRepository();

  void isLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  Future<void> getAllCategories() async {
    categories.clear();
    ApiResult result = await _homeRepository.getAllCategories();
    result.when(success: (element) {
      categories.addAll(element);
    }, error: (message) {
      ShowToast.showToast(message: message, isError: true);
    });
    notifyListeners();
  }

  Future<void> getProducts() async {
    isLoading(true);
    products.clear();
    ApiResult result = await _homeRepository.getProducts();
    result.when(success: (product) {
      products.addAll(product);
    }, error: (message) {
      ShowToast.showToast(message: message, isError: true);
    });
    isLoading(false);
    notifyListeners();
  }
}
