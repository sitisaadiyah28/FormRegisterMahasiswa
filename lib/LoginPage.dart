import 'package:flutter/material.dart';
import 'package:register_sederhana/main.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 3,
            child: Image(image: AssetImage("images/tipnp.png")),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Text(
              'FORM LOGIN MAHASISWA',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20),
            child: Text(
              'Email',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2.0)
                  )
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20),
            child: Text(
              'Password',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2.0)
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 15, right: 15),
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/14,
                child: RaisedButton(
                  color: Colors.orange,
                  onPressed: () {

                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
          FlatButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => RegisterPage()));
            },
            child: Text('Register', style: TextStyle(fontSize: 18.0,),),
          )
        ],
      ),
    );
  }
}
