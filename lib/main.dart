import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'cartPage.dart';

// A Counter example implemented with riverpod
void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

// final nameProvider = Provider<int>((ref) {
//   return 1;
// });

// class changeNotifier extends StateNotifier<int?> {
//   // now use stateNotifierProvider for using the function change()
//   changeNotifier() : super(null);
//   void change() {
//     state = state == null ? 1 : state! + 1;
//   }
// }
// // using stateNotifoer provider;

// final countProvider = StateNotifierProvider<changeNotifier, int?>((ref) {
//   return changeNotifier();
// });

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.dark(),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends ConsumerWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             ref.read(countProvider.notifier).change();
//           },
//           child: Icon(Icons.add)),
//       appBar: AppBar(
//         title: Text("State Management Course"),
//       ),
//       body: Container(
//           alignment: Alignment.topCenter,
//           child: Consumer(
//             builder: (context, ref, child) {
//               final countStatus = ref.watch(countProvider);
//               return Text(countStatus.toString());
//             },
//           )),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: MyCart(),
    );
  }
}
