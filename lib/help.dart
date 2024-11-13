import 'package:flutter/material.dart';
import 'package:myapp/methds.dart';

class Help extends StatelessWidget {
  const Help({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 50, 48, 48),
      appBar: AppBar(
        title: const Text(
          'Help! Contact Us',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(221, 50, 48, 48),
      ),
      body: Column(children: [
        // container one
        Container(
          width: 370,
          height: 70,
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.only(top: 3, bottom: 3, left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 51, 87, 116),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            icon: const Icon(
              Icons.email,
              color: Colors.white,
            ),
            label: const Text('Chat directly with our support agent',
                style: TextStyle(color: Colors.white, fontSize: 12)),
          ),
        ),

        // container two

        Container(
          width: 370,
          height: 70,
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.only(top: 3, bottom: 3, left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(221, 108, 105, 105),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            icon: const Icon(
              Icons.message,
              color: Color.fromARGB(255, 26, 24, 24),
            ),
            label: const Text('Send an email to our support team',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                )),
          ),
        ),

        // container three
        Container(
          width: 370,
          height: 70,
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.only(top: 3, bottom: 3, left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(221, 30, 60, 7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            icon: const Icon(
              Icons.wechat_sharp,
              color: Color.fromARGB(255, 10, 160, 8),
            ),
            label: const Text('Chat with us on Whatsapp',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                )),
          ),
        ),

// Container four
        Container(
          width: 370,
          height: 70,
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.only(top: 3, bottom: 3, left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(221, 132, 34, 34),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            icon: const Icon(
              Icons.call,
              color: Color.fromARGB(255, 225, 34, 34),
            ),
            label: const Text('Call our Support team directly',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                )),
          ),
        ),
      ]),
      bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildNavItem(Icons.home, "Home"),
              buildNavItem(Icons.bar_chart, 'Account'),
              buildNavItem(Icons.payment, 'Payment'),
              buildNavItem(Icons.help, 'Help'),
              buildNavItem(Icons.more, 'More')
            ],
          )),
    );
  }
}
