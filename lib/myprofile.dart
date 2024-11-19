import 'package:flutter/material.dart';
import 'package:myapp/methds.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int requests = 0;

  List<String> quotes = [
    'The only limit to our realization of tomorrow will be our doubts of today.— Franklin D. Roosevelt',
    'In the end, we will remember not the words of our enemies, but the silence of our friends — Martin Luther King Jr',
    'Success is not final, failure is not fatal: It is the courage to continue that counts — Winston Churchill',
    'The purpose of our lives is to be happy — Dalai Lama',
    'Life is what happens when you are busy making other plans — John Lennon',
    "You miss 100% of the shots you don’t take — Wayne Gretzky"
  ];

  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          // const Divider(
          //   height: 30.0,
          //   color: Color.fromARGB(255, 236, 231, 231),
          //   thickness: 0.5,
          // ),
//           const Column(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//     Text('Loading data...'),
//     SizedBox(height: 20), // Space between text and spinner
//     CircularProgressIndicator(), // The spinner
//   ],
// ),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // const CircleAvatar(
              //   backgroundImage: AssetImage('assets/ginaface.png'),
              //   radius: 40,
              //   backgroundColor: Colors.transparent,

              // ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                width: 100.0, // Specify the width and height as needed
                height: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.orange, // Border color
                    width: 2.5, // Border width
                  ),
                  image: const DecorationImage(
                    image: AssetImage(
                        'assets/ginaface.png'), // Replace with your image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nakabuuka',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    'Regina Desire',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text('@ginababy',
                      style: TextStyle(fontSize: 16, color: Colors.grey)),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const Image(
                    image: AssetImage('assets/frame.png'),
                    width: 50,
                    height: 50),
              ),
            ],
          ),
          const Divider(
            height: 30.0,
            color: Color.fromARGB(255, 236, 231, 231),
            thickness: 2.5,
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Container(
              width: 330,
              height: 80,
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '+ $requests',
                        style: const TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 8, 8, 8),
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Requests',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    width: 3.0, // Width of the vertical bar
                    height: 30.0, // Height of the vertical bar
                    color: Colors.orange, // Color of the bar
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.group,
                        size: 40,
                      ),
                      Text('Friends',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 20,
          ),

// const list tile
          // const ListTile(
          //   leading: CircleAvatar(
          //     backgroundColor: Colors.orange,
          //     radius: 30.0,
          //     child: Icon(
          //       Icons.settings,
          //       color: Colors.white,
          //       size: 30.0,
          //     ),
          //   ),
          //   title: Text('Account'),
          //   subtitle: Text(
          //     'Manage your account details,change password, etc.',
          //     maxLines: 1,
          //     overflow: TextOverflow.ellipsis,
          //   ),
          //   trailing: Icon(Icons.chevron_right),
          // ),

          ...quotes.map((quote) {
            return cardTemplate(quote);
          }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(
          side: BorderSide(
            color: Color.fromARGB(255, 11, 174, 5),
            width: 2.0,
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/help');
          setState(() {
            requests++;
          });
        },
        backgroundColor: const Color.fromARGB(255, 13, 175, 51),
        child: const Icon(
          Icons.add,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }
}
