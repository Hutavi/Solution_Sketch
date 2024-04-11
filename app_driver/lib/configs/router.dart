// import 'package:driver/screens/home_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// final _key = GlobalKey<NavigatorState>();

// final router = Provider<GoRouter>(
//   (ref) {
//     // final authState = ref.watch(authProvider);
//     // final phoneNumberAuthState = ref.watch(phoneAuthProvider);

//     // final redirectLocation = phoneNumberAuthState.redirectPath;
//     // if (redirectLocation != null && redirectLocation.isNotEmpty) {
//     //   phoneNumberAuthState.clearRedirect();
//     // }

//     return GoRouter(
//       navigatorKey: _key,
//       initialLocation: MyHomePage.path,
//       routes: [
//         GoRoute(
//           path: MyHomePage.path,
//           name: MyHomePage.name,
//           builder: (context, state) => const MyHomePage(
//             title: 'Driver',
//           ),
//         ),
//       ],
//     );
//   },
// );
