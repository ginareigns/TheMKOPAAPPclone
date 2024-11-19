import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 37, 36, 36),
        appBar: AppBar(
          title: const Text('Login'),
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 138, 136, 136),
          foregroundColor: Colors.white,
          centerTitle: false,
        ),
        body: Column(
          children: [
            const Text(
              'M-KOPA ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              child: const Text(
                'Login into the app to pay for your account',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 5, 10, 10),
              child: const Text(
                'unlock the phone, get new offers and more.',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: SizedBox(
                width: 330,
                child: TextField(
                  style: TextStyle(color: Colors.white, fontSize: 12),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    labelText: 'Account Number',
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: SizedBox(
                width: 330,
                child: TextField(
                  style: TextStyle(color: Colors.white, fontSize: 12),
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              style: TextButton.styleFrom(
                  minimumSize: const Size(330, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  backgroundColor: const Color.fromARGB(255, 30, 144, 17)),
              onPressed: () {
                (String value) async {
                  await showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Thanks!'),
                        content: Text(
                            'You typed "$value", which has length ${value.characters.length}.'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                };

                /////
              },
              child: const Text(
                'LOGIN',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Forgot Password?',
              style: TextStyle(color: Colors.green),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'New Customer',
                  style: TextStyle(color: Colors.green),
                ),
                Text(
                  'Activate your account',
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
            const Spacer(),
            const SizedBox(
              width: 280,
              height: 108,
              child: Card(
                margin: EdgeInsets.all(10),
                color: Color.fromARGB(66, 110, 137, 173),
                elevation: 4,
                child: ListTile(
                  leading: Icon(
                    Icons.support_agent_outlined,
                    color: Color.fromARGB(255, 85, 144, 193),
                  ),
                  title: Text(
                    'Need  support?',
                    style: TextStyle(
                        color: Color.fromARGB(255, 68, 153, 224),
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  subtitle: Text(
                    'Click here to find ways you can get help.',
                    style: TextStyle(
                        color: Color.fromARGB(255, 68, 153, 224), fontSize: 14),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
