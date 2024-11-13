import 'package:flutter/material.dart';

// Suggested code may be subject to a license. Learn more: ~LicenseLog:593143052.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1728114772.
void main() {
  ElevatedButton.icon(
    onPressed: () {},
    icon: const Icon(Icons.email),
    label: const Text('Email me'),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.amber,
      foregroundColor: Colors.black,
    ),
  );

  // child: Container(
  //           height: 200,
  //           margin:
  //               const EdgeInsets.only(right: 50, left: 5, top: 30, bottom: 20),
  //           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
  //           decoration: BoxDecoration(
  //             color: Colors.green,
  //             borderRadius: BorderRadius.circular(30),
  //             border: Border.all(color: Colors.white, width: 10),
  //           ),
  //           child: Row(
  //             children: [
  //               Container(),
  //               const Text("fdfd"),
  //             ],
  //           )),

  // floatingActionButton: FloatingActionButton(
  //       onPressed: () {
  //         print('You clicked me');
  //       },
  //       backgroundColor: Colors.red,
  //       child: const Text('click me'),
  //     ),
}
