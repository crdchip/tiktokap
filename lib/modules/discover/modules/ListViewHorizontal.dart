import 'package:flutter/cupertino.dart';
import 'package:tiktokap/config/data/data_videos.dart';
import 'package:tiktokap/modules/discover/modules/video_client.dart';

class ListViewHorizontal extends StatelessWidget {
  const ListViewHorizontal({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: videos.length,
        itemBuilder: (context, index) {
          return Container(
            width: size.width * 0.3,
            height: 150,
            child: VideoClient(
              video: videos[index],
            ),
          );
        });
  }
}
