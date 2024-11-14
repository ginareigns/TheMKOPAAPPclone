import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
      body: Column(
        children: [
          // const Divider(
          //   height: 30.0,
          //   color: Color.fromARGB(255, 236, 231, 231),
          //   thickness: 0.5,
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
                margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
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
            margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
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
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_add,
                        size: 40,
                      ),
                      Text(
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

const SizedBox(height: 20,),
        

          const ListTile(
            leading: CircleAvatar(
                backgroundColor: Colors.orange,
                radius: 30.0,
                child: Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              title:  Text('Account'),
              subtitle: Text(
                      'Manage your account details,change password, etc.',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: Icon(Icons.chevron_right),
          )
        ],
      ),
    );
  }
}
