import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: RegisterPage(),
  debugShowCheckedModeBanner: false,
));

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3,
              child: Image(image: AssetImage("images/tipnp.png")),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text(
                'FORM REGISTER MAHASISWA',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 60),
              child: Text(
                'Nama Mahasiswa',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextFormField(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Text(
                'NIM',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextFormField(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Text(
                'Program Studi',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextFormField(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Text(
                'Alamat',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextFormField(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Text(
                'No Telp',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextFormField(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Text(
                'Password',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: TextFormField(
                obscureText: true,
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
                      'Register',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            /*FlatButton(
                onPressed: (){
                  *//*Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));*//*
                },
                child: Text(
                  'Login ',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, ),
                )),*/
          ],
      ),
    );
  }
}

