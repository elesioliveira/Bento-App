// ignore_for_file: await_only_futures

import 'package:bento_app/model/product_model.dart';
import '../../../../../design_system/utils/category_api.dart';
import '../../../../../design_system/utils/products_api.dart';
import '../../../../../model/category_model.dart';
import '../../../../../services/return_api/api_result.dart';

class HomeRepository {
  ApiResult handleSuccessOrErrorCategories(List<Map<String, String>>? result) {
    if (result != null) {
      List<Category> categories =
          result.map((map) => Category.fromMap(map)).toList();
      return ApiResult.success(categories);
    } else {
      return ApiResult.error('Error: Not found');
    }
  }

  ApiResult handleSuccessOrErrorProducts(List<Map<String, dynamic>>? result) {
    if (result != null) {
      List<Product> products =
          result.map((map) => Product.fromMap(map)).toList();
      return ApiResult.success(products);
    } else {
      return ApiResult.error('Error: Not found');
    }
  }

  Future<ApiResult> getAllCategories() async {
    final List<Map<String, String>> result = await CategoryApi.getCategoryApi();
    return handleSuccessOrErrorCategories(result);
  }

  Future<ApiResult> getProducts() async {
    final List<Map<String, dynamic>> result = await ProductApi.getProductApi();
    return handleSuccessOrErrorProducts(result);
  }
}
