import 'package:flutter_test/flutter_test.dart';
import 'package:inventory_sales_system/modules/products/controllers/product_controller.dart';
void main() {
  test('adds a valid product', () {
    // أنشئ ProductController
    final controller = ProductController();

    // استدعِ addProduct باسم keyboard
    final isAdded = controller.addProduct('keyboard');

    expect(isAdded, true);

    // تحقق من أن القائمة تحتوي على keyboard
    expect(controller.products, contains('keyboard'));
  });
  test('rejects an empty product name', () {
  // أنشئ Controller جديدًا
final controller = ProductController();
  // احفظ عدد المنتجات قبل الإضافة
final initialCount = controller.products.length;
  // حاول إضافة اسم مكوّن من مسافات فقط
final isAdded=controller.addProduct('     ');
expect(isAdded, false);

  // تحقق أن عدد المنتجات لم يتغير
expect(controller.products.length, initialCount);
});
  test('adds a valid product', () {
    // أنشئ ProductController
    final controller = ProductController();

    // استدعِ addProduct باسم keyboard
    final isAdded = controller.addProduct('   keyboard   ');

    expect(isAdded, true);

    // تحقق من أن القائمة تحتوي على keyboard
    expect(controller.products.last, contains('keyboard'));
  });
}