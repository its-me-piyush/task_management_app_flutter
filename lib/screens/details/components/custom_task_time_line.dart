import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class CustomTaskTimeline extends StatelessWidget {
  const CustomTaskTimeline({Key? key, required this.detail}) : super(key: key);
  final Map<String, dynamic> detail;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          _customBuildTimeLine(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  detail['time'],
                ),
                detail['title'].isNotEmpty
                    ? _customBuildCard(detail['backgroundColor'],
                        detail['title'], detail['slot'])
                    : _customBuildCard(Colors.white, '', '')
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _customBuildCard(
      Color backgroundColor, String title, String timeSlot) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            timeSlot,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  SizedBox _customBuildTimeLine() {
    return SizedBox(
      height: 80,
      width: 20,
      child: TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0,
        isFirst: true,
        indicatorStyle: IndicatorStyle(
          indicatorXY: 0,
          width: 15,
          indicator: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                width: 5,
                color: detail['tailColor'],
              ),
            ),
          ),
        ),
        afterLineStyle: LineStyle(
          thickness: 2,
          color: detail['tailColor'],
        ),
      ),
    );
  }
}
