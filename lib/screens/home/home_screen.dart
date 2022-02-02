import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/go_premium.dart';
import 'components/tasks_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _customAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const GoPremiumWidget(),
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text(
              'Tasks',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Expanded(
            child: TasksList(),
          ),
        ],
      ),
    );
  }

  AppBar _customAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        children: [
          SizedBox(
            height: 45,
            width: 45,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SvgPicture.asset(
                'assets/avatar.svg',
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'Hi, Amanda!',
            style: TextStyle(
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      actions: const [
        Icon(
          Icons.more_vert_rounded,
          color: Colors.black,
          size: 40,
        ),
      ],
    );
  }
}
