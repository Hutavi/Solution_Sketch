// import 'package:app_driver/services/dio_client.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatefulWidget {
//   const MainApp({super.key});

//   @override
//   State<MainApp> createState() => _MainAppState();
// }

// class _MainAppState extends State<MainApp> {
//   @override
//   void initState() {
//     super.initState();
//     fetchData();
//   }

//   void fetchData() async {
//     try {
//       final dio = DioClient();
//       final response = await dio.request('/techstack/getAllTechStack',
//           options: Options(method: 'GET'));
//       print(response.data);
//     } catch (e) {
//       print(e);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Text('Hello World!'),
//         ),
//       ),
//     );
//   }
// }

import 'package:app_driver/app.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}
