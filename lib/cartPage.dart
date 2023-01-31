import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class textButtonNotifier extends StateNotifier<String> {
  textButtonNotifier() : super("Add Item to the cart");
  void rivertText() {
    // to change the text.
    if (state == "Add Item to the cart") {
      state = "Remove Item from the cart";
    } else {
      state = "Add Item to the cart";
    }
  }
}

class borderColorNotifier extends StateNotifier<Color> {
  borderColorNotifier() : super(Colors.white24);
  void rivertColor() {
    //  to change the color of the border.
    if (state == Colors.white24) {
      state = Colors.green;
    } else {
      state = Colors.white24;
    }
  }
}

final textProvider = StateNotifierProvider<textButtonNotifier, String>((ref) {
  return textButtonNotifier();
});

final colorProvider = StateNotifierProvider<borderColorNotifier, Color>((ref) {
  return borderColorNotifier();
});

class MyCart extends ConsumerWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("My Cart"),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Consumer(builder: (context, ref, child) {
              final colorStatus = ref.watch(colorProvider);
              return Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    color: colorStatus,
                  ),
                ),
              );
            }),
            TextButton(onPressed: () {
              ref.read(colorProvider.notifier).rivertColor();
              ref.read(textProvider.notifier).rivertText();
            }, child: Consumer(
              builder: (context, ref, child) {
                final textStatus = ref.watch(textProvider);
                return Text(textStatus);
              },
            )),
          ],
        ),
      ),
    );
  }
}
