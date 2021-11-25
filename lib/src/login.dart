import 'package:flutter/material.dart';
import 'package:frontend_examen/src/Home.dart';

class login extends StatefulWidget {
  static String id = 'login';

  @override
  _loginState createState() => _loginState();

}

class _loginState extends State<login> {
  @override

  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        backgroundColor: Colors.greenAccent,
      body: Center(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60),
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Text('Login',
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 200),
                  padding: EdgeInsets.symmetric(horizontal: 45.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      labelText: 'Usuario', labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    ),
                    onChanged: (valu){},
                  ),
                ),
                SizedBox(height: 40.0,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 45.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.white,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Contraseña', labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    ),
                    onChanged: (valu){},
                  ),
                ),
                SizedBox(height: 40.0,),
                RaisedButton(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
                      child: Text('Iniciar sesion',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontFamily: 'rmedium',
                        ),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Color(0xff2C96A5),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Home();
                      }));
                    },

                ),
              ],
            ),
          ],
        ),
      ),
    ),
    );
  }
  }