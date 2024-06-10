import 'package:flutter/material.dart';

class VideosSection extends StatelessWidget {
  VideosSection({super.key});
  final List videoList = [
    'Intoduction Flutter',
    'Set up Emulator',
    'set up for windows',
    'Creating our first app',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index == 0 ? Colors.blue : Colors.blue.withOpacity(0.6),
            ),
            child: Icon(
              Icons.play_arrow_rounded,
              size: 25,
              color: Colors.white,
            ),
          ),
          title: Text(
            videoList[index],
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text('1h 25 minute'),
        );
      },
    );
  }
}
