import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './ShopMain.dart';
import 'package:provider/provider.dart';
import './notifier.dart';
class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Color(0xFF9775FA),
         child: TextButton(
           style: TextButton.styleFrom(
               backgroundColor:Color(0xFF9775FA)
           ),
           onPressed: () {

           },
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Text(
                 "Checkout",
                 style: TextStyle(
                   color: Colors.white,
                   fontWeight: FontWeight.w500,
                   fontSize: 17,
                 ),
               ),
             ],
           ),
         ),
        ),

        appBar: AppBar(
        leading: IconButton(onPressed:(){

          Navigator.push(context, MaterialPageRoute(builder: (context)=>ShopMain()));
        },icon:Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text("Cart"),
      ),
      body:Consumer<StateShopCart>(
        builder: (context,cart , child){

          List cartItems = cart.shopCart;
          return ListView.builder(

            itemCount: cartItems.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 5.h),
                width: MediaQuery.of(context).size.width,
                height: 150.h,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F6FA),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],

                ),
                child: Row(
                  children: [
                    Container(
                        width: 100.w,
                        height: 100.h,
                        child: Image.network(cartItems[index]['image'])),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width:MediaQuery.of(context).size.width*.70,
                              child: Text(cartItems[index]['title'],style: TextStyle(
                                color: Color(0xFF1D1E20),
                                fontWeight: FontWeight.w500
                              ),)),
                          SizedBox(height: 7.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(cartItems[index]['price'].toString(),style: TextStyle(
                                  color: Color(0xFF8F959E),
                                fontWeight: FontWeight.w400


                              ),),
                              Text("\$",style: TextStyle(color: Color(0xFF8F959E)),),

                            ],
                          ),
                          SizedBox(height: 7.h,),
                          Container(
                            width: MediaQuery.of(context).size.width*.70,
                            // or set an explicit width
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [

                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: IconButton(onPressed: (){},icon: Icon(Icons.delete),),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )


                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          );
        },
      )
    );
  }
}
