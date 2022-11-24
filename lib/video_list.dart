import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

/// Creates list of video players
class VideoList extends StatefulWidget {
  @override
  _VideoListState createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  final List<YoutubePlayerController> _controllers = [
    'MYseqY8X2oY', // Trống Đồng Ngọc Lũ
    '3hx89zIpE6c', // Trống Đồng Đền Hùng
    'grMeX67i0q8', // Trống Đồng Hữu Chung
    'da1VXFn4TpQ', // Trống Đồng Cổ Loa
    'Mt96cmqSIFs',
    'p1nkzXxc9qs',
    '6EEGMqWAU3o',
    'adHddFAlbxg',
    'paClYfnNIt4',
  ]
      .map<YoutubePlayerController>(
        (videoId) => YoutubePlayerController(
          initialVideoId: videoId,
          flags: const YoutubePlayerFlags(
            autoPlay: false,
          ),
        ),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video List Demo'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return YoutubePlayer(
            key: ObjectKey(_controllers[index]),
            controller: _controllers[index],
            actionsPadding: const EdgeInsets.only(left: 16.0),
            bottomActions: [
              CurrentPosition(),
              const SizedBox(width: 10.0),
              ProgressBar(isExpanded: true),
              const SizedBox(width: 10.0),
              RemainingDuration(),
              FullScreenButton(),
            ],
          );
        },
        itemCount: _controllers.length,
        separatorBuilder: (context, _) => const SizedBox(height: 10.0),
      ),
    );
  }
}
