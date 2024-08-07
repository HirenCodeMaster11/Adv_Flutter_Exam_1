import 'package:flutter/cupertino.dart';
import 'package:untitled/APi%20Helper/Api%20Helper.dart';

import '../Modal/modal.dart';

class ProductProvider extends ChangeNotifier
{
  ApiHelper apiHelper = ApiHelper();
  // ProductModal? productModal;
  List<ProductModal> dataList = [];
  int selectedIndex = 0;
  int selectedProIndex = 0,quantity = 1;
  List cart = [];
  double shippingFee = 1.50;
  double price = 0;
  double discountPercentage = 16;
  double discount = 0;
  double discountPrice = 0;
  double totalPrice = 0;

  void selectedCon(int index)
  {
    selectedIndex = index;
    quantity = 1;
    calPrice();
    notifyListeners();
  }

  void selectedPro()
  {
    selectedProIndex;
    notifyListeners();
  }

  void deleteP(int index)
  {
    cart.removeAt(index);
    calPrice();
    TotalPrice();
    notifyListeners();
  }
  void qty(String op,int index)
  {
    if (index < 0 || index >= cart.length) return;

    if (op == 'inc') {
      cart[index]['quantity']++;
    } else if (op == 'dec') {
      if (cart[index]['quantity'] > 1) {
        cart[index]['quantity']--;
      }
    }

    calPrice();
    notifyListeners();
  }
  void calPrice() {
    price = 0;
    for(int i=0; i<cart.length; i++)
    {
      price += cart[i]['price'] * cart[i]['quantity'];
    }
    TotalPrice();
  }

  void cartAdd()
  {
    bool qty = false;
    int index =0;

    for(int i=0; i<cart.length; i++)
    {
      // if(cart[i]['title'] == [selectedIndex].title)
      // {
      //   index =i;
      //   qty = true;
      //   break;
      // }
    }
    if(qty)
    {
      cart[index]['quantity']++;
    }
    else {
      // var productToAdd = [selectedIndex];
      // cart.add({'title': productToAdd.title, 'price': productToAdd.price, 'quantity': quantity,'images': productToAdd.images,'discountPercentage' : productToAdd.discountPercentage});
    }
    calPrice();
  }

  void TotalPrice() {
    for(int i=0; i<cart.length; i++)
    {
      discount = (price * discountPercentage) / 100;
      discountPrice = price - discount;
      shippingFee = 1.50;
      totalPrice = discountPrice + shippingFee;
      notifyListeners();
    }
  }
  Future<List<ProductModal>> fromMap()
  async {
    final json = await apiHelper.fetchApi();
    dataList = json.map((e) => ProductModal.fromJson(e),).toList();
    notifyListeners();
    return dataList;
  }

  ProductProvider()
  {
    fromMap();
  }
}