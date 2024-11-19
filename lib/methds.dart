import 'package:flutter/material.dart';

// Method for creating a Nav Item
Widget buildNavItem(IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: Colors.white),
      Text(label, style: const TextStyle(color: Colors.white))
    ],
  );
}


Widget cardTemplate(quote){

  return Container(
             decoration: const BoxDecoration(
                
                color: Color.fromARGB(255, 19, 159, 11),
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))

              ),

              margin: const  EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(10),
              width: 350,
              height: 80,
              

              child: Text(quote, style: const TextStyle(fontSize: 20,  color: Colors.white,fontFamily:'times new roman'), maxLines: 2,
              overflow: TextOverflow.ellipsis),
            );
}



