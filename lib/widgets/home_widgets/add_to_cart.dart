import 'package:augmented_reality/core/store.dart';
import 'package:augmented_reality/models/cart.dart';
import 'package:augmented_reality/models/catalog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_catalog/core/store.dart';
// import 'package:flutter_catalog/models/cart.dart';
// import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  AddToCart({
    required Key key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation]  );
    //VxState.w(context, to: [AddMutation]);
    // final CartModel _cart = (VxState.store as MyStore).cart;
    // bool isInCart = _cart.items.contains(catalog);
    return 
      ElevatedButton(
        onPressed: () {
          // if (!isInCart) {
          //   AddMutation(catalog);
          // }
        },
        style: ButtonStyle(
            backgroundColor:  MaterialStateProperty.all(
                            Colors.lightBlue),
            shape: MaterialStateProperty.all(
              StadiumBorder(),
            )),
           // child: Icon(Icons.done),
           child: Text("Buy",style: TextStyle(color: Colors.white),),
      //  child: isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus),
      );
  }
}
