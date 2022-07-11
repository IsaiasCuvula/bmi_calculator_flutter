import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class NavBottom extends StatelessWidget {
  const NavBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(40.0),
        topRight: Radius.circular(40.0),
      ),
      child: BottomAppBar(
        color: colorBlue,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.show_chart,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            const SizedBox(width: 48.0),
            IconButton(
              icon: const Icon(
                Icons.filter_list,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
