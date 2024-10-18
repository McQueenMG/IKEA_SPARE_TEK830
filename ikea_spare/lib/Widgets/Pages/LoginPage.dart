import 'package:flutter/material.dart';
import 'package:ikea_spare/Widgets/LoginButton.dart';
import 'package:ikea_spare/Widgets/Pages/HomePage.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void openHomePage() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const MyHomePage(
            title:
                'IKEA SPARE (Spare Parts acquisition and resource exchange)')));
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    final String userName = "ikea";
    final String password = "123";

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
                              child: Text("Username: "),
                            ),

                            Expanded(
                              child: TextField(
                                controller: TextEditingController()..text = "Type your username here",
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
                              child: Text("Password: ")
                            ),

                            Expanded(
                              child: TextField(
                                obscureText: true,
                                controller: TextEditingController()..text = "12345",
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
                          child: const Text("Login"),
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
