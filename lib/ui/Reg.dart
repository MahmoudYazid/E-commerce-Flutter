import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './main.dart';
class reg extends StatefulWidget {
  const reg({super.key});

  @override
  State<reg> createState() => _regState();
}

class _regState extends State<reg> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomAppBar(

        color: Color(0xFF9775FA),
        child:Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [TextButton(onPressed: (){},child: Text("Sign Up",style: TextStyle(color: Colors.white),))],
        ),
        elevation: 0,
      ),
      resizeToAvoidBottomInset : false,

      body: SafeArea(

          child: SingleChildScrollView(
            child: Container(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()));
                      }, child: Icon(Icons.arrow_back), style: TextButton.styleFrom(
                          backgroundColor: Color(0xFFF5F6FA)
                      ), ),

                    ],

                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("Sign Up ",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w600),)],
                    ),
                  ),

                  SizedBox(height: 50.h,),
                  Container(
                    padding: EdgeInsets.only(left:30.w,right: 30.w ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Username',
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Container(
                    padding: EdgeInsets.only(left:30.w,right: 30.w ),

                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Container(
                    padding: EdgeInsets.only(left:30.w,right: 30.w ),

                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Email Address',
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h,),


                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(left:30.w,right: 30.w ),


                    child: new Row(
                      children: <Widget>[
                        new Expanded (
                          flex:0,
                          child : Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,

                            children: <Widget>[new Text("Remember me")],
                          ),),
                        new Expanded(

                          flex :1,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,

                            children: <Widget>[
                              Switch(

                                value: true,
                                onChanged: (value) {

                                },
                                activeTrackColor: Color(0xFF34C759),
                                activeColor: Colors.white,
                              ),
                            ],
                          ),)
                      ],
                    ),
                  ),






                ],
              ),
            ),
          )
      ),
    );
  }
}
