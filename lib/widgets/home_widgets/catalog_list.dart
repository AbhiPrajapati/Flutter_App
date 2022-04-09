
import 'package:augmented_reality/core/store.dart';
import 'package:augmented_reality/models/cart.dart';
import 'package:augmented_reality/models/catalog.dart';
import 'package:augmented_reality/screens/home_detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

import 'add_to_cart.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetailPage(catalog: catalog),
            ),
          ),
          child: CatalogItem(catalog: catalog),
        );
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key? key, required this.catalog})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final CartModel _cart = (VxState.store as MyStore).cart;
    // bool isInCart = _cart.items.contains(catalog);
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(
              image: catalog.image,
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.color(Colors.black).bold.make(),
              catalog.desc.text.textStyle(TextStyle(color: Colors.black)).make(),
              //catalog.desc.text,
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.xl.make(),
                  //AddToCart(catalog: catalog)
                   ElevatedButton(
                    onPressed: () {
                      // if (!isInCart) {
                      //   AddMutation(catalog);
                      // }
                    },
                    
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(5),
                        backgroundColor: MaterialStateProperty.all(
                            Colors.lightBlue),
                        shape: MaterialStateProperty.all(
                          StadiumBorder(),
                        )),
                        child: Icon(CupertinoIcons.cart_badge_plus),),
                    // child: isInCart
                    //     ? Icon(Icons.done)
                    //     : Icon(CupertinoIcons.cart_badge_plus),
                  

                 // AddToCart(key : Key(catalog.id.toString()),catalog: catalog).wh(100, 50),
                ],
              ).pOnly(right: 12.0)
            ],
          ))
        ],
      ),
    ).color(Colors.white).rounded.square(150).make().py8();
  }
}
