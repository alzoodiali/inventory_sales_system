import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/product_controller.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  final ProductController controller = Get.put(ProductController());
  final TextEditingController textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product View'),
      ),
      body: SingleChildScrollView(
        
        child: Column(
          children: [
          const  Text('This is the Product View'),
            TextField(controller: textController, decoration: const InputDecoration(hintText: 'Enter product name'),),
            ElevatedButton(onPressed:() { 
              final isAdded = controller.addProduct(textController.text);
              if(isAdded) {
                textController.clear();
              }
            }, 
            child:  const Text('Add Product')),
        
            Obx(() => Column(
              children: controller.products.map((product) {
                 return Text(product);
              }).toList(),
            )),
          ],
        ),
      ),
    );
  }
}
