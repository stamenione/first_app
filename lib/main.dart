// import 'section_2/gradient_container.dart';
// import 'package:first_app/section_4/quiz.dart';
// import 'package:first_app/section_5/widgets/expenses.dart';
// import 'package:first_app/section_6/widgets/expenses.dart';

// import 'package:flutter/services.dart';

// section 12
import 'package:first_app/section_12/widgets/grocery_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Groceries',
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 147, 229, 250),
          brightness: Brightness.dark,
          surface: const Color.fromARGB(255, 42, 51, 59),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 50, 58, 60),
      ),
      home: const GroceryList(),
    );
  }
}

//section 11
// import 'package:first_app/section_11/widgets/grocery_list.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Groceries',
//       theme: ThemeData.dark().copyWith(
//         colorScheme: ColorScheme.fromSeed(
//           seedColor: const Color.fromARGB(255, 147, 229, 250),
//           brightness: Brightness.dark,
//           surface: const Color.fromARGB(255, 42, 51, 59),
//         ),
//         scaffoldBackgroundColor: const Color.fromARGB(255, 50, 58, 60),
//       ),
//       home: const GroceryList(),
//     );
//   }
// }

//section 9
// import 'package:first_app/section_9/screens/tabs.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// import 'package:google_fonts/google_fonts.dart';

// final theme = ThemeData(
//   useMaterial3: true,
//   colorScheme: ColorScheme.fromSeed(
//     brightness: Brightness.dark,
//     seedColor: const Color.fromARGB(255, 131, 57, 0),
//   ),
//   textTheme: GoogleFonts.latoTextTheme(),
// );

// void main() {
//   runApp(const ProviderScope(child: App(),));
// }

// class App extends StatelessWidget {
//   const App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: theme,
//       home: const TabsScreen(),
//     );
//   }
// }


// section 8
// import 'package:first_app/section_8/screens/tabs.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// import 'package:google_fonts/google_fonts.dart';

// final theme = ThemeData(
//   useMaterial3: true,
//   colorScheme: ColorScheme.fromSeed(
//     brightness: Brightness.dark,
//     seedColor: const Color.fromARGB(255, 131, 57, 0),
//   ),
//   textTheme: GoogleFonts.latoTextTheme(),
// );

// void main() {
//   runApp(const App());
// }

// class App extends StatelessWidget {
//   const App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: theme,
//       home: const TabsScreen(),
//     );
//   }
// }

// section_6 and 5
// var kColorScheme = ColorScheme.fromSeed(
//   seedColor: const Color.fromARGB(255, 96, 59, 181),
// );

// var kDarkColorScheme = ColorScheme.fromSeed(
//   brightness: Brightness.dark,
//   seedColor: const Color.fromARGB(255, 5, 99, 125),
// );

// section 7
// runApp(MaterialApp(
//     theme: ThemeData(useMaterial3: true),
//     home: Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter Internals'),
//       ),
//       body: const Keys(),
//     ),
//   ));

// section 6
// // WidgetsFlutterBinding.ensureInitialized();
//   // SystemChrome.setPreferredOrientations([
//   //   DeviceOrientation.portraitUp,
//   // ]).then((value) {
//     runApp(
//       MaterialApp(
//         darkTheme: ThemeData.dark().copyWith(
//           colorScheme: kDarkColorScheme,
//           cardTheme: const CardTheme().copyWith(
//             color: kDarkColorScheme.secondaryContainer,
//             margin: const EdgeInsets.symmetric(
//               horizontal: 16,
//               vertical: 8,
//             ),
//           ),
//           elevatedButtonTheme: ElevatedButtonThemeData(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: kDarkColorScheme.primaryContainer,
//               foregroundColor: kDarkColorScheme.onPrimaryContainer,
//             ),
//           ),
//         ),
//         theme: ThemeData().copyWith(
//           colorScheme: kColorScheme,
//           appBarTheme: const AppBarTheme().copyWith(
//             backgroundColor: kColorScheme.onPrimaryContainer,
//             foregroundColor: kColorScheme.primaryContainer,
//           ),
//           cardTheme: const CardTheme().copyWith(
//             color: kColorScheme.secondaryContainer,
//             margin: const EdgeInsets.symmetric(
//               horizontal: 16,
//               vertical: 8,
//             ),
//           ),
//           elevatedButtonTheme: ElevatedButtonThemeData(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: kColorScheme.primaryContainer,
//             ),
//           ),
//           textTheme: ThemeData().textTheme.copyWith(
//                 titleLarge: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: kColorScheme.onSecondaryContainer,
//                   fontSize: 16,
//                 ),
//               ),
//         ),
//         themeMode: ThemeMode.system,
//         home: const Expenses(),
//       ),
//     );
//   // });

// section 5
// runApp(
  //   MaterialApp(
  //     darkTheme: ThemeData.dark().copyWith(
  //       colorScheme: kDarkColorScheme,
  //       cardTheme: const CardTheme().copyWith(
  //         color: kDarkColorScheme.secondaryContainer,
  //         margin: const EdgeInsets.symmetric(
  //           horizontal: 16,
  //           vertical: 8,
  //         ),
  //       ),
  //       elevatedButtonTheme: ElevatedButtonThemeData(
  //         style: ElevatedButton.styleFrom(
  //           backgroundColor: kDarkColorScheme.primaryContainer,
  //           foregroundColor: kDarkColorScheme.onPrimaryContainer,
  //         ),
  //       ),
  //     ),
  //     theme: ThemeData().copyWith(
  //       colorScheme: kColorScheme,
  //       appBarTheme: const AppBarTheme().copyWith(
  //         backgroundColor: kColorScheme.onPrimaryContainer,
  //         foregroundColor: kColorScheme.primaryContainer,
  //       ),
  //       cardTheme: const CardTheme().copyWith(
  //         color: kColorScheme.secondaryContainer,
  //         margin: const EdgeInsets.symmetric(
  //           horizontal: 16,
  //           vertical: 8,
  //         ),
  //       ),
  //       elevatedButtonTheme: ElevatedButtonThemeData(
  //         style: ElevatedButton.styleFrom(
  //           backgroundColor: kColorScheme.primaryContainer,
  //         ),
  //       ),
  //       textTheme: ThemeData().textTheme.copyWith(
  //             titleLarge: TextStyle(
  //               fontWeight: FontWeight.bold,
  //               color: kColorScheme.onSecondaryContainer,
  //               fontSize: 16,
  //             ),
  //           ),
  //     ),
  //     themeMode: ThemeMode.system,
  //     home: const Expenses(),
  //   ),
  // );

// this is a body for section 4 and section 3
// const Quiz()

// this is a Body for section 2
// GradientContainer([
//           Colors.deepOrange,
//           Colors.deepOrangeAccent,
//         ]