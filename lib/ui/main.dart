import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './Login.dart';
import './Reg.dart';
import './ShopMain.dart';
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(

        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(left: 2.w,right: 2.w),
          decoration: BoxDecoration(
            color: Color(0xFF9775FA),
            image: DecorationImage(
              image: AssetImage('assets/mainbg.png'),
            ),

          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [


              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),

                ),
                width: 300.w,
                height: 240.h,
                padding: EdgeInsets.only(left: 20,right: 20),
                margin: EdgeInsets.only(bottom: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,

                  children: [
                    SizedBox(height: 10.h,),
                    Container(
                      padding:EdgeInsets.only(top: 5.h),

                      child: Text("Look Good, Feel Good",style: TextStyle(
                        fontSize:25,
                        fontWeight: FontWeight.w600,




                      ),),
                    ),
                    SizedBox(height: 10.h,),
                    Container(


                      child: Flexible(

                        child: Text(textAlign: TextAlign.center,"Create your individual & unique style and look amazing everyday.",style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF8F959E),









                        ),),
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Container(

                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          ElevatedButton(onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Login()),
                            );
                          }
                          , child: Text("Login"),style: ElevatedButton.styleFrom(
                            fixedSize: Size(120.w, 60.h),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),),
                          SizedBox(width: 10.h),
                          ElevatedButton(onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const reg()),
                            );
                          }, child: Text("registration", style: TextStyle(
                            color: Colors.white,

                            fontSize: 13.sp,

                          ),),style: ElevatedButton.styleFrom(
                              fixedSize: Size(120.w, 60.h),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                              backgroundColor: Color(0xFF9775FA)
                          ),
                          ),

                        ],
                      ),
                    ),
                    Container(

                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const ShopMain()),
                            );

                          }, child: Text("skip"),style: TextButton.styleFrom(
                            fixedSize: Size(120.w, 30.h),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),),


                        ],
                      ),
                    )

                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
