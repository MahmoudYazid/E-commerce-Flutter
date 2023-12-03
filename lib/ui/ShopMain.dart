import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShopMain extends StatefulWidget {
  const ShopMain({super.key});

  @override
  State<ShopMain> createState() => _ShopMainState();
}


class _ShopMainState extends State<ShopMain> {

  var DataListCards=[
    {
      "name":"Nike Sportswear Club Fleece",
      "price":"99"
    },{
      "name":"Nike Sportswear Club Fleece",
      "price":"99"
    },{
      "name":"Nike Sportswear Club Fleece",
      "price":"99"
    },{
      "name":"Nike Sportswear Club Fleece",
      "price":"99"
    },{
      "name":"Nike Sportswear Club Fleece",
      "price":"99"
    },{
      "name":"Nike Sportswear Club Fleece",
      "price":"99"
    },{
      "name":"Nike Sportswear Club Fleece",
      "price":"99"
    },{
      "name":"Nike Sportswear Club Fleece",
      "price":"99"
    },{
      "name":"Nike Sportswear Club Fleece",
      "price":"99"
    },{
      "name":"Nike Sportswear Club Fleece",
      "price":"99"
    },{
      "name":"Nike Sportswear Club Fleece",
      "price":"99"
    },{
      "name":"Nike Sportswear Club Fleece",
      "price":"99"
    },{
      "name":"Nike Sportswear Club Fleece",
      "price":"99"
    },];
  var ListDataBrands=["adidas","adidas","adidas","adidas","adidas","adidas","adidas","adidas","adidas",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          child: Row(
            children: [
              Expanded(child: TextButton(onPressed: (){

              },child: Text("Home"))),
              Expanded(child: TextButton(onPressed: (){},child: Icon(Icons.favorite))),
              Expanded(child: TextButton(onPressed: (){},child: Icon(Icons.shopping_bag))),
              Expanded(child: TextButton(onPressed: (){},child: Icon(Icons.account_balance_wallet_rounded))),

            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 10,right: 10,top: 20),
            child: Column(

              children: [
                Row(
                  children: [
                    Expanded(child: Container(

                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          Icon(Icons.menu,size: 35),
                        ],
                      ),
                    )),
                      Expanded(child: Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.shopping_bag,size: 35,),
                          ],
                        ),
                      ))

                  ],
                ),
                SizedBox(height: 20.h,),
                Row(
                  children: [
                    Expanded(child: Container(

                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          Text("Hello",style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 28,
                            color: Color(0xFF1D1E20)
                          ),)
                        ],
                      ),
                    )),

                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Container(

                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          Text("Welcome to Laza.",style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Color(0xFF8F959E)
                          ),)
                        ],
                      ),
                    )),

                  ],
                ),
                SizedBox(height: 20.h,),
                Row(
                  children: [
                    Expanded(
                        flex: 4,
                        child: Container(

                      color: Color(0xFFF5F6FA),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50), // Adjust the radius as needed

                        ),
                        child: Row(
                          children: [Expanded(
                              flex: 1,
                              child: Icon(Icons.search)),Expanded(
                              flex: 4,
                              child: TextFormField())],
                        ),
                      ),
                    )),
                    Expanded(
                        flex: 1,
                        child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(onPressed: (){}, style: TextButton.styleFrom(
                            backgroundColor: Color(0xFF9775FA),
                            fixedSize: Size(50.w, 50.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                            )

                          ),child: Icon(Icons.mic,color: Colors.white,))
                        ],
                      ),
                    ))

                  ],
                ),
                SizedBox(height: 20.h,),
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(

                          child: Container(
                            child: Row(
                              children: [
                                Text("Choose Brand" , style: TextStyle(fontSize:17,fontWeight: FontWeight.w500,color: Color(0xFF1D1E20) ),)],
                            ),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(onPressed: (){}, style: TextButton.styleFrom(




                              ),child: Text("View All" , style: TextStyle(fontSize:17,fontWeight: FontWeight.w500,color: Color(0xFF8F959E) ),)
                              )
                            ],
                          ),
                        ))

                  ],
                ),
                SizedBox(height: 20.h,),

                Container(
                  height: 100, // Set your desired height
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ListDataBrands.length,
                    itemBuilder: (BuildContext context, int index) {
                      return TextButton(onPressed: (){},
                        child: Container(
                          width: 150,
                          // Set your desired width for each item
                          margin: EdgeInsets.all(8), // Set margin as needed
                          color: Color(0xFFF5F6FA), // Set your desired background color
                          child: Row(
                            children: [
                              Image.network("https://logowik.com/content/uploads/images/adidas-new-2022-rounded-icon6520.jpg",
                              width: 70.w,
                                height: 70.h,

                              )
                              ,
                              SizedBox(width: 10.w,),
                              Text(
                                ListDataBrands[index],
                                style: TextStyle(
                                  color: Color(0xFF1D1E20),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,

                                  // Set your desired text color
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(

                          child: Container(
                            child: Row(
                              children: [
                                Text("New Arraival" , style: TextStyle(fontSize:17,fontWeight: FontWeight.w500,color: Color(0xFF1D1E20) ),)],
                            ),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(onPressed: (){}, style: TextButton.styleFrom(




                              ),child: Text("View All" , style: TextStyle(fontSize:17,fontWeight: FontWeight.w500,color: Color(0xFF8F959E) ),)
                              )
                            ],
                          ),
                        ))

                  ],
                ),
                SizedBox(height: 20.h,),
                Wrap(
                  spacing: 3,
                  children: DataListCards.map((item){
                    return TextButton(
                      onPressed: (){},
                      style: TextButton.styleFrom(
                        fixedSize: Size(165.w,
                            350.h),
                      )
                        ,
                      child: Container(
                        width: 200.w,
                        height: 350.h,
                        margin: EdgeInsets.all(1),
                        color: Colors.white,



                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(child: TextButton(onPressed: (){},child: Icon(Icons.favorite))),
                                Expanded(child: TextButton(onPressed: (){},child: Icon(Icons.shopping_cart_checkout)))
                              ],

                            ),
                            Container(
                              height: 200.h,


                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),

                                child: Image.network("https://www.apetogentleman.com/wp-content/uploads/2018/06/male-models-guinness.jpg",
                                width: 250,
                                    height: 150,
                                    fit:BoxFit.fitHeight


                                ),

                              ),
                            ),
                            SizedBox(height:5.h ,),
                            Container(

                              child: Row(

                                children: [
                                  Flexible(child: Text("Nike Sportswear Club Fleece",style: TextStyle(
                                    color: Color(0xFF1D1E20)
                                  ),))
                                ],
                              ),
                            ),
                            SizedBox(height:5.h ,),
                            Container(

                              child: Row(

                                children: [
                                  Flexible(child: Text("\$99",style: TextStyle(
                                      color: Color(0xFF1D1E20)
                                  ),))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                )





              ],
            ),
          ),
        ),
      ),
    );
  }
}
