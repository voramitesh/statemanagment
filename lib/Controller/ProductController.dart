import 'package:get/get.dart';
import 'package:statemanagment/Model/ProductModel.dart';


class ProductController extends GetxController {
  List<Product> products = [];

  @override
  void onInit() {
    super.onInit();
    fatchProduct();
  }

  fatchProduct() async {
    await Future.delayed(Duration(seconds: 3));
    List<Product> serverResponse = [
      Product(
        id: 1,
        price: 499,
        productDescription: 'some description about product',
        productImage: 'assets/images/Blue_Tshirt.jpg',
        productName: 'T-Shirt',
        favorite: false,
      ),
      Product(
        id: 2,
        price: 799,
        productDescription: 'some description about product',
        productImage: 'assets/images/shoes.jpg',
        productName: 'Shoes',
        favorite: false,
      ),
      Product(
        id: 3,
        price: 1000,
        productDescription: 'some description about product',
        productImage: 'assets/images/jeans.png',
        productName: 'Jeans',
        favorite: false,
      ),
      Product(
        id: 4,
        price: 899,
        productDescription: 'some description about product',
        productImage: 'assets/images/shoes.jpg',
        productName: 'Shoes',
        favorite: false,
      ),
    ];
    products.assignAll(serverResponse);
    print(products);

  }


  RxList allproduct =[].obs;
  RxInt totalproduct = 0.obs;

  get getTotalproduct => allproduct.length;

  void aadProduct( {required Product data} ){
    allproduct.add(data);
  }


  void remuvdata( {required Product data} ){
    allproduct.remove(data);
  }
}