import 'package:flutter/material.dart';
import 'package:ikea_spare/Widgets/Pages/HomePage.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final String _userName = "ikea";
  final String _password = "123";


  void openHomePage() {
    if(_usernameController.text == _userName && _passwordController.text == _password) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const MyHomePage(
              title:'IKEA SPARE (Spare Parts acquisition and resource exchange)')
      ));
      _passwordController.text = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(100),
                  child: Container(
                    height: 200,
                    width: 500,
                    color: Colors.blue,
                    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [

                      // Username
                      Container(
                        width: double.infinity,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          
                            const Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 5, 0),
                              child: Text("Username: ", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
                            ),

                            Expanded(
                              child: TextField(
                                controller: _usernameController,
                                onChanged: (value) => {},
                              )
                            )
                          ],
                        ),
                      ),

                      // Password
                      Container(
                        width: double.infinity,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          
                            const Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 6, 0),
                              child: Text("Password: ", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600))
                            ),

                            Expanded(
                              child: TextField(
                                obscureText: true,
                                controller: _passwordController,
                                onChanged: (value) => {},
                              )
                            )
                          ],
                        ),
                      ),


                      SizedBox(
                        height: 40,
                        width: 200,
                        child: ElevatedButton(
                          onPressed: openHomePage,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(100, 0, 87, 173)),
                          child: const Text("Login", style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ]
                  )
                )
              )
            ],
          )
        ),
      );
    }
}
