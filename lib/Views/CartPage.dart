import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagment/Controller/ProductController.dart';


class Cart extends StatefulWidget {

  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  final productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Cart"),
        actions: [

        ],
      ),
      body:  Obx(
              (){
            return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title:Text("${ productController.allproduct[index].productName}"),
                    leading: Image.asset('${productController.allproduct[index].productImage}'),
                    subtitle: Text("${productController.products[index].price}"),
                    trailing:TextButton(onPressed: (){
                      productController.remuvdata(data: productController.allproduct[index]);
                    },child: Text("remove"),),
                  );
                },
                itemCount: productController.allproduct.length);
          }
      ),
    );
  }
}