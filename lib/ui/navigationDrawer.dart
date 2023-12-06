import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class NavDrawer extends StatefulWidget {
  const NavDrawer({super.key});

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context)=>Drawer(
    child: SafeArea(
      child: Container(
        color: Color(0xFFFFF),
        padding: EdgeInsets.only(top: 50.h,left: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            Row(children: [
              Icon(Icons.menu,size: 40,)



            ],),

            Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.network("https://t4.ftcdn.net/jpg/02/14/74/61/360_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg",
          width: 60.w,),
        )
                ,SizedBox(width: 5.w,),
                Column(children: [Text("Mrh Raju"),Text("Verified Profile")]),
        SizedBox(width: 30.w,),
                Container(
                  color: Color(0xFFF5F5F5),
                  child: Text("3 orders"),
                )

              ],),
            Row(children: [
              Icon(Icons.info,size: 30,)
              ,SizedBox(width: 5.w,),
              Text("Account Information"),


            ],),
            Row(children: [
              Icon(Icons.lock,size: 30,)
              ,SizedBox(width: 5.w,),
              Text("Password"),


            ],),
            Row(children: [
              Icon(Icons.shopping_bag,size: 30,)
              ,SizedBox(width: 5.w,),
              Text("Order"),


            ],),
            Row(children: [
              Icon(Icons.account_balance_wallet,size: 30,)
              ,SizedBox(width: 5.w,),
              Text("My Cards"),


            ],),

            Row(children: [
              Icon(Icons.favorite,size: 30,)
              ,SizedBox(width: 5.w,),
              Text("Wishlist"),


            ],),
            Row(children: [
              Icon(Icons.settings,size: 30,)
              ,SizedBox(width: 5.w,),
              Text("Settings"),


            ],)


          ],
        ),
      ),
    ),
  );
}
