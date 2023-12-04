import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './ShopMain.dart';
class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomAppBar(

        color: Color(0xFF9775FA),
        child: TextButton(
          onPressed: (){},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Add to Cart",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 17
              ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ShopMain()));
                        },child: Icon(Icons.arrow_back))
                      ],
                    )),
                    Expanded(child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(onPressed: (){},child: Icon(Icons.shopping_bag))
                      ],
                    )),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Container(child: Image.network("https://www.apetogentleman.com/wp-content/uploads/2018/06/male-models-guinness.jpg")))
                  ],
                ),
                SizedBox(height: 10.h,),

                Container(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(child: Text("Men's Printed Pullover Hoodie",
                          style: TextStyle(
                            color: Color(0xFF8F959E)
                          ),))
                        ],
                      )),
                      Expanded(
                          flex: 1,
                          child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                            Text("Price",style: TextStyle(
                                color: Color(0xFF8F959E)
                            ))
                          ],
                      )),
                    ],
                  ),
                ),
                SizedBox(height: 10.h,),
                Container(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(child: Text("Nike Club Fleece",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600
                              ),))
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("\$120",  style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600
                              ))
                            ],
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 10.h,),
                Container(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),

                          child: Container(child: Image.network("https://www.apetogentleman.com/wp-content/uploads/2018/06/male-models-guinness.jpg",
                                                 )),
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),

                          child: Container(child: Image.network("https://www.apetogentleman.com/wp-content/uploads/2018/06/male-models-guinness.jpg",
                            )),
                        ),
                      ),
                      SizedBox(width: 5.w,),

                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),

                          child: Container(child: Image.network("https://www.apetogentleman.com/wp-content/uploads/2018/06/male-models-guinness.jpg",
                            )),
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),

                          child: Container(child: Image.network("https://www.apetogentleman.com/wp-content/uploads/2018/06/male-models-guinness.jpg",
                          )),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 10.h,),
                Container(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(child: Text("Size",
                                style:TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ) ,))
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("Size Guide",style: TextStyle(
                              color: Color(0xFF8F959E)
                      ))
                            ],
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 10.h,),
                Container(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(child: Container(
                          width: 10.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F6FA),
                            borderRadius: BorderRadius.circular(15), // Adjust the radius as needed


                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("S",style: TextStyle(
                                color: Color(0xFF1D1E20),
                                fontSize: 17,
                                fontWeight: FontWeight.w600
                              ),),
                            ],
                          ),)),
                      ),
                      SizedBox(width: 5.w,),
                      Expanded(
                        child: Container(child: Container(
                          width: 10.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F6FA),
                            borderRadius: BorderRadius.circular(15), // Adjust the radius as needed


                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("M",style: TextStyle(
                                  color: Color(0xFF1D1E20),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600
                              ),),
                            ],
                          ),)),
                      ),
                      SizedBox(width: 5.w,),

                      Expanded(
                        child: Container(child: Container(
                          width: 10.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F6FA),
                            borderRadius: BorderRadius.circular(15), // Adjust the radius as needed


                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("L",style: TextStyle(
                                  color: Color(0xFF1D1E20),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600
                              ),),
                            ],
                          ),)),
                      ),
                      SizedBox(width: 5.w,),

                      Expanded(
                        child: Container(child: Container(
                          width: 10.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F6FA),
                            borderRadius: BorderRadius.circular(15), // Adjust the radius as needed


                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("XL",style: TextStyle(
                                  color: Color(0xFF1D1E20),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600
                              ),),
                            ],
                          ),)),
                      ),
                      SizedBox(width: 5.w,),

                      Expanded(
                        child: Container(child: Container(
                          width: 10.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F6FA),
                            borderRadius: BorderRadius.circular(15), // Adjust the radius as needed


                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("2XL",style: TextStyle(
                                  color: Color(0xFF1D1E20),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600
                              ),),
                            ],
                          ),)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h,),

                Container(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(child: Text("Description",
                                  style:TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                  )))
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("",style: TextStyle(
                                  color: Color(0xFF8F959E)
                              ))
                            ],
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 10.h,),

                Container(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(child: Text("The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with ")),

                            ],
                          )),

                    ],
                  ),
                ),
                SizedBox(height: 10.h,),

                Container(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Total price",
                                  style:TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                  )),
                              Text("with VAT,SD",style: TextStyle(
                                  color: Color(0xFF8F959E)
                              ))
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("\$125",style: TextStyle(
                                  color: Color(0xFF8F959E)
                              ))
                            ],
                          )),
                    ],
                  ),
                ),

              ],
            ),
          ),
        
        ),
      ),
    );
  }
}
