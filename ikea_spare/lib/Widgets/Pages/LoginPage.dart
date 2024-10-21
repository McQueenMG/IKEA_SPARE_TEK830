import 'package:flutter/material.dart';
import 'package:ikea_spare/Widgets/Pages/HomePage.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController()..text = "ikea";
  final TextEditingController _passwordController = TextEditingController()..text = "123";
  final String _userName = "ikea";
  final String _password = "123";
  bool _wrongInput = false;

  final userNameTextFieldDecoration = const InputDecoration(
    focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blue))
  );

  final passwordTextFieldDecoration = const InputDecoration(
    focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blue))
  );

  void _tryToOpenHomePage() {
    if(_usernameController.text != _userName || _passwordController.text != _password) {
      setState(() => _wrongInput = true);
      return;
    }

    setState(() => _wrongInput = false);
    _openHomePage();
  }

  void _openHomePage() {
    Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const MyHomePage(
              title:'IKEA SPARE')
      ));
  }

  @override
  Widget build(BuildContext context) {
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
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(25)
                    ),
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
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                                child: TextField(
                                        controller: _usernameController,
                                        onChanged: (value) => {},
                                        decoration: _wrongInput ? userNameTextFieldDecoration.copyWith(
                                          enabledBorder: const OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.red))
                                          ): userNameTextFieldDecoration,
                                      )
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
                              child: Text(" Password: ", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600))
                            ),

                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                                child: TextField(
                                        obscureText: true,
                                        controller: _passwordController,
                                        onChanged: (value) => {},
                                        decoration: _wrongInput ? userNameTextFieldDecoration.copyWith(
                                          enabledBorder: const OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.red))
                                        ): userNameTextFieldDecoration,
                                      )
                              )
                            )
                          ],
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      ),

                      // Login button
                      SizedBox(
                        height: 40,
                        width: 200,
                        child: ElevatedButton(
                          onPressed: _tryToOpenHomePage,
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
