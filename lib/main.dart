import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/app.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Image.asset(
//               'assets/images/logo_simbol.png',width: 150,
//                               height: 150,
//           ),
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '당근마켓 클론 코딩',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: ()=> const App()),
      ],
    );
  }
}
