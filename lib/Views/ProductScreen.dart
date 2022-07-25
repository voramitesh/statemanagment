import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagment/Controller/ProductController.dart';

class ProductScreen extends StatelessWidget {
  final productController = Get.put(ProductController());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("ALL PRODUCT LIST",style: TextStyle(color: Colors.black),),
        actions: [
          Row(
            children: [
              Obx(
                      (){
                    return ElevatedButton.icon(
                      onPressed: () {
                        Get.toNamed('Cart');
                      },
                      icon: Icon(Icons.shopping_cart),
                      label: Text('${productController.allproduct.length.obs}'),
                    );
                  }
              )
            ],
          )
        ],
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Theme.of(context).primaryColor, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              elevation: 5,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 120,
                    width: double.infinity,
                    child: Image.asset(
                      productController.products[index].productImage,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          productController.products[index].productName,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            productController.products[index].favorite
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Price : ${productController.products[index].price} ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            productController.aadProduct(data:productController.products[index]);
                            print("${productController.allproduct.length}");
                          },
                          child: Text(
                            'Add to Card',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
          itemCount: productController.products.length),
    );
  }
}