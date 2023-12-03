import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './main.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        
        color: Color(0xFF9775FA),
        child:Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [TextButton(onPressed: (){},child: Text("login",style: TextStyle(color: Colors.white),))],
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
                      children: [Text("Welcome ",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w600),)],
                    ),
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("Please enter your data to continue ",style: TextStyle(color: Color(0xFF8F959E),fontSize: 15,fontWeight: FontWeight.w600),)],
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

                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text("Forgot password?",style: TextStyle(color: Color(0xFFEA4335),fontSize: 15,fontWeight: FontWeight.w400),)],
                    ),
                  ),
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
