import 'package:flutter/material.dart';
import 'package:flutter/services.dart';




class ForgotPassword extends StatefulWidget{

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}



class _ForgotPasswordState extends State<ForgotPassword>{


  @override
  Widget buildEmail(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 18),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.person,
                  color: Color(0xff5ac18e),
                ),
                hintText:'Your Email',
                hintStyle:TextStyle(
                    color: Colors.black38
                )
            ),
          ),
        )
      ],
    );
  }


  Widget buildSignUp(){
    return Container(
        alignment: Alignment.centerRight,
        child: TextButton(
            onPressed: () => print("Forgot Password Pressed"),
            child: Padding(
              padding: EdgeInsets.only(right: 0),
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),

            )

        )
    );
  }

  // Widget buildRememberCb(){
  //   return Container(
  //     height: 20,
  //     child: Row(
  //       children: <Widget>[
  //         Theme(
  //           data: ThemeData(unselectedWidgetColor: Colors.white),
  //           child: Checkbox(
  //             value: isRememberMe,
  //             checkColor: Colors.green,
  //             activeColor: Colors.white,
  //             onChanged: (value){
  //               setState(() {
  //                 isRememberMe = value!;
  //               });
  //             },
  //           ),
  //         ),
  //         Text(
  //           'Remember me',
  //           style: TextStyle(
  //               color: Colors.white,
  //               fontWeight: FontWeight.bold
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }

  // Widget buildLoginBtn(){
  //   return Container(
  //     padding: EdgeInsets.symmetric(vertical: 25),
  //     width: double.infinity,
  //     child :RaisedButton(
  //       elevation: 5,
  //       onPressed: () => print('Login Pressed'),
  //       padding: EdgeInsets.all(15),
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(15)
  //       ),
  //       color: Colors.white,
  //       child: Text(
  //         'Login',
  //         style: TextStyle(
  //           color: Color(0xff5ac18e),
  //           fontSize: 18,
  //           fontWeight: FontWeight.bold
  //         )
  //       ),
  //     ),
  //   );
  // }



  Widget buildResetBtn(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => print('Reset Pressed'),
        style: ElevatedButton.styleFrom(
          elevation: 5, backgroundColor: Colors.white,
          padding: EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          'Reset Password',
          style: TextStyle(
            color: Color(0xff5ac18e),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   throw UnimplementedError();
  // }

  // Widget buildSignUpBtn(){
  //   return GestureDetector(
  //       onTap: () => print("Sign Up Pressed"),
  //       child: RichText(
  //         text: TextSpan(
  //             children: [
  //               TextSpan(
  //                   text: 'Don\'t have an Account?',
  //                   style: TextStyle(
  //                       color: Colors.white,
  //                       fontSize: 18,
  //                       fontWeight: FontWeight.w500
  //                   )
  //               ),
  //               TextSpan(
  //                   text: 'Sign Up',
  //                   style:TextStyle(
  //                       color: Colors.white,
  //                       fontSize: 18,
  //                       fontWeight: FontWeight.bold
  //                   )
  //               )
  //             ]
  //         ),
  //       )
  //   );





  @override
  Widget build(BuildContext context){
    return Scaffold(
        body:  AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: GestureDetector(
              child: Stack(
                children: <Widget>[
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0x665ac18e),
                              Color(0x995ac18e),
                              Color(0xcc5ac18e),
                              Color(0xff5ac18e),
                            ]
                        )
                    ),
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 120
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Reset',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 50),
                          buildEmail(),
                          SizedBox(height: 20),

                          buildResetBtn()
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            ),
        );
    }
}