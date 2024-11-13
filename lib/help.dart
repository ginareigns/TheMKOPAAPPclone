import 'package:flutter/material.dart';
import 'package:myapp/methds.dart';

class Help extends StatelessWidget {
  const Help ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
        title: const Text('Help', style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      ),
      ),
      backgroundColor: const Color.fromARGB(31, 110, 106, 106),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
              Container(
                margin: const EdgeInsets.only(left: 15, top:0),
                child: const Text('Contact us', style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
          Container(
            
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin:const EdgeInsets.only(top:10, left: 10, right:10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 37, 42, 75),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Chat', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                    Text('Chat directly with our Customer support', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white))
                  ],
                
                ),
                Spacer(),

                  Icon(Icons.chat_bubble, color: Color.fromARGB(255, 169, 167, 205),),

              ],
            ),

          ),


// two card
        Container(
            
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin:const EdgeInsets.only(top:10, left: 10, right:10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 44, 46, 44),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Whatsapp', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                    Text('Chat with us on whatsapp', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white))
                  ],
                
                ),
                Spacer(),

                  Icon(Icons.wechat, color: Color.fromARGB(255, 137, 140, 137),),

              ],
            ),

          ),

        Container(
            
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin:const EdgeInsets.only(top:10, left: 10, right:10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 23, 63, 24),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                    Text('Send us an email right away', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white))
                  ],
                
                ),
                Spacer(),

                  Icon(Icons.email, color: Color.fromARGB(255, 32, 177, 37),),

              ],
            ),

          ),


                  Container(
            
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin:const EdgeInsets.only(top:10, left: 10, right:10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 109, 23, 25),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Call', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                    Text('Call and talk with our agents', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white))
                  ],
                
                ),
                Spacer(),

                  Icon(Icons.call, color: Color.fromARGB(255, 201, 40, 40),),

              ],
            ),

          ),
        ],

      ),


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