import 'package:get/get.dart';
class ProductController extends GetxController {
  final products= <String>[
    'laptop',
    'mobile', 
    'mouse',
  ].obs;

 bool addProduct(String product) {
  final cleanProduct = product.trim();
  if(cleanProduct.isNotEmpty) {
    products.add(cleanProduct);
    return true;
  }
  return false;
 }

}