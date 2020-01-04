import 'package:flutter/material.dart';
import 'package:testapp/registar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false ,  //  to remove the debug banner which is showed at the corrner of the app screen 
      
      home: SignIn (),  // this navigates the app to Signin() class where we have the main design 
    );
  }
}

class SignIn extends StatefulWidget {   //stateful widget refers to the widgets which interacts with the user 
  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> { 
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  // text field state
  String email = '';
  String password = '';
  String error = '';


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                SizedBox(height: 1.0),
                Center(child: Image.asset('assets/logo.png')),
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 30.0),
                TextFormField(
                  style: TextStyle(color: Colors.green[800]),
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.green[800]),
                      hintText: "Enter your Email",
                      filled: true,
                      fillColor: Colors.lightGreen[50],
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.green[300], width: 3.0),
                        borderRadius: new BorderRadius.circular(25.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.green[500], width: 3.0),
                        borderRadius: new BorderRadius.circular(25.0),
                      )),
                  validator: (val) => val.isEmpty ? 'Enter an email' : null,
                  onChanged: (val) {
                    setState(() => email = val);
                  },
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  style: TextStyle(color: Colors.green[800]),
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.green[800]),
                      hintText: "Enter your Password",
                      filled: true,
                      fillColor: Colors.lightGreen[50],
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.green[300], width: 3.0),
                        borderRadius: new BorderRadius.circular(25.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.green[500], width: 3.0),
                        borderRadius: new BorderRadius.circular(25.0),
                      )),
                  obscureText: true,
                  validator: (val) =>
                      val.length < 6 ? 'Enter a password 6+ chars long' : null,
                  onChanged: (val) {
                    setState(() => password = val);
                  },
                ),
                SizedBox(height: 20.0),
                RaisedButton(
                    color: Colors.green[400],
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: null,
                    ),
                SizedBox(height: 22.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    
                    Text('Don\'t have an account?', style: TextStyle(fontWeight: FontWeight.w500),),
                    RawMaterialButton(
                      splashColor: Colors.green,
                      textStyle: TextStyle(color: Colors.black),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(' Sign Up now  ', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.green),),
                          Icon(Icons.person_add)
                        ],
                      ),
                      onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Register()),
  );
}
                    ),
                    
                  ],
                ),

                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    
                    Text('Forgot your password ?', style: TextStyle(fontWeight: FontWeight.w500),),
                    RawMaterialButton(
                      splashColor: Colors.green,
                      textStyle: TextStyle(color: Colors.black),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text('Retrieve', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.green),),
                          
                        ],
                      ),
                      onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Register()),
  );
}
                    ),
                    
                  ],
                ),



                SizedBox(height: 12.0),
                Text(
                  error,
                  style: TextStyle(color: Colors.red, fontSize: 14.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

