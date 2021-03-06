import 'package:flutter/material.dart';

class Products extends StatelessWidget{
  final List<String> products;

  Products([this.products = const []]);

  Widget _buildProductItem(BuildContext context, int index){
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/comida.jpg'),
          Text(products[index])
        ],
      ),
    );
  }

  Widget _buildProductList(){
    Widget productCard;
    if(products.length > 0){
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      productCard = Center(child: Text('Nenhum Produto'));
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
      return _buildProductList();
  }
}