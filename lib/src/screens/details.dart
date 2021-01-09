import 'package:carousel_pro/carousel_pro.dart';
import 'package:chatapps/src/models/product.dart';
import 'package:chatapps/src/helpers/commons.dart';
import 'package:chatapps/src/widgets/small_floating_button.dart';
import 'package:chatapps/src/widgets/title.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final Product product;

  const Details({@required this.product});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BLACK,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 120,
              backgroundImage: NetworkImage(widget.product.image),
            ),
            SizedBox(height: 15,),
            CustomText(text: widget.product.name, size: 26, weight: FontWeight.bold,),
            CustomText(text: "£${widget.product.price}", size: 20, weight: FontWeight.w400,color: RED,),
            SizedBox(height: 10,),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.product.description, textAlign: TextAlign.center, style: TextStyle(color: WHITE, fontWeight:  FontWeight.w300),)
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(icon: Icon(Icons.remove, size: 28, color: RED,), onPressed: (){
                    if (quantity != 1) {
                       setState(() {
                         quantity = quantity - 1 ;
                       });
                    }
                  }),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color:RED,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(28, 12 ,28 ,12),
                      child: CustomText(text: 'Add $quantity to Cart', color: WHITE, size: 22, weight: FontWeight.w300,),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(icon: Icon(Icons.add, size: 28, color: RED,), onPressed: (){
                    setState(() {
                      quantity = quantity + 1 ;
                    });
                  }),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
