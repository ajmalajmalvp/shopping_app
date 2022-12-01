import 'package:flutter_shopping_app/services/data_streams/data_stream.dart';
import 'package:flutter_shopping_app/services/database/product_database_helper.dart';

class AllProductsStream extends DataStream<List<String>> {
  @override
  void reload() {
    final allProductsFuture = ProductDatabaseHelper().allProductsList;
    allProductsFuture.then((favProducts) {
      addData(favProducts);
    }).catchError((e) {
      addError(e);
    });
  }
}
