import 'package:flutter/material.dart';

class ScaleRuler extends StatelessWidget {
  const ScaleRuler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 100,
        itemBuilder: (ctx, index) {
          return Center(
            child: Container(
              height: 60,
              width: 1,
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.5,
                  color: Colors.black26,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
