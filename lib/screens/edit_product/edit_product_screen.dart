import 'package:flutter_shopping_app/models/Product.dart';
import 'package:flutter_shopping_app/screens/edit_product/provider_models/ProductDetails.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/body.dart';

class EditProductScreen extends StatelessWidget {
  final Product productToEdit;

  const EditProductScreen({Key key, this.productToEdit}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductDetails(),
      child: Scaffold(
        appBar: AppBar(),
        body: Body(
          productToEdit: productToEdit,
        ),
      ),
    );
  }
}
