import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

void main(List<String> args) {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    // focused container width is always equal to the unfocused container width + padding
    final double itemWidth = 200;
    final double itemPadding = 20;
    final double totalItemSize = itemPadding + itemWidth;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SizedBox(
            height: 200,
            width: itemWidth * 3,
            child: ScrollSnapList(
                dynamicItemSize: true,
                initialIndex: 1,
                dynamicItemOpacity: 0.5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      color: Colors.red,
                      height: 150,
                      width: itemWidth,
                      child: Center(child: Text("Container${index + 1}")),
                    ),
                  );
                },
                itemCount: 10,
                itemSize: totalItemSize,
                onItemFocus: (index) {}),
          ),
        ),
      ),
    );
  }
}
