
import 'package:flutter/material.dart';
import 'package:register_sederhana/LoginPage.dart';

void main() => runApp(MaterialApp(
  home: RegisterPage(),
  debugShowCheckedModeBanner: false,
));

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  void _tampilkanalert() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 100.0,
        child: new Center(
          child: Column(
            children: <Widget>[
              Text("Selamat Anda Berhasil!!"),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: RaisedButton(
                  color: Colors.orange,
                  child: Text('Login', style: TextStyle(fontSize: 18, color: Colors.white ),),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LoginPage()));
                  },
                ),
              )
            ],

        ),
      ),
      )
    );
    showDialog(context: context, child: alertDialog);
  }

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
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Nama Mahasiswa",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2.0)
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Text(
                'NIM',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "NIM",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2.0)
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Text(
                'Program Studi',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Program Studi",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2.0)
                    )
                ),
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
                'Alamat',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
              child: TextFormField(
                maxLines: 6,
                decoration: InputDecoration(
                    hintText: "Alamat Mahasiswa",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2.0)
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Text(
                'No Telp',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    hintText: "Nomor Telp",
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
                      _tampilkanalert();
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ],
      ),
    );
  }
}

