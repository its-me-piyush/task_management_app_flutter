import 'package:flutter/material.dart';

class CustomDatePicker extends StatefulWidget {
  const CustomDatePicker({Key? key}) : super(key: key);

  @override
  _CustomDatePickerState createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  final weekList = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
  final dayList = ['24', '25', '26', '27', '28', '29', '30'];
  int _selectedIndex = 4;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color:
                  _selectedIndex == index ? Colors.grey.withOpacity(0.1) : null,
            ),
            child: Column(
              children: [
                Text(
                  weekList[index],
                  style: TextStyle(
                    color: _selectedIndex == index ? Colors.black : Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  dayList[index],
                  style: TextStyle(
                    color: _selectedIndex == index ? Colors.black : Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(
          width: 5,
        ),
        itemCount: weekList.length,
      ),
    );
  }
}
