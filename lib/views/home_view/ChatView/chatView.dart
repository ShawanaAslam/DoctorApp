

/////////////////////////////////////////////////////////


import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';

class ChatView extends StatefulWidget {

   String userName;
 String message;
 ChatView({
super.key,
required this.userName,
required this.message,
});
  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  Duration duration = const Duration(seconds: 60); // default 1 minute
  Duration position = const Duration(seconds: 0);
  bool isPlaying = false;
  bool isLoading = false;
  bool isPause = false;

  void _changeSeek(double value) {
    setState(() {
      position = Duration(seconds: value.toInt());
    });
  }

  void _playAudio() {
    setState(() {
      isPlaying = !isPlaying;
      isPause = !isPause;
    });
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.userName),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 80),
            child: Column(
              children: <Widget>[
                //Text("Last message: $message"),
                BubbleNormalAudio(
                  color: const Color(0xFFE8E8EE),
                  duration: duration.inSeconds.toDouble(),
                  position: position.inSeconds.toDouble(),
                  isPlaying: isPlaying,
                  isLoading: isLoading,
                  isPause: isPause,
                  onSeekChanged: _changeSeek,
                  onPlayPauseButtonClick: _playAudio,
                  sent: true,
                ),

                 BubbleNormal(
                  text: 'Bubble with tail (sender)',
                  isSender: true,
                  color: Color(0xFFE8E8EE),
                  tail: true,
                  sent: true,
                ),
                DateChip(date: DateTime(now.year, now.month, now.day - 2)),
                 BubbleNormal(
                  text: 'No tail bubble (receiver)',
                  isSender: false,
                  color: Color(0xFF1B97F3),
                  tail: false,
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                 BubbleNormal(
                  text: 'No tail bubble (sender)',
                  color: Color(0xFFE8E8EE),
                  tail: false,
                  sent: true,
                  seen: true,
                  delivered: true,
                ),

                DateChip(date: DateTime(now.year, now.month, now.day - 1)),
                BubbleSpecialOne(
                  text: 'Special bubble one (sender)',
                  color: Color(0xFFE8E8EE),
                  seen: true,
                ),
                 BubbleSpecialOne(
                  text: 'Special bubble one no tail',
                  isSender: false,
                  tail: false,
                  color: Color(0xFF1B97F3),
                  textStyle: TextStyle(fontSize: 20, color: Colors.white),
                ),
                BubbleSpecialOne(
                  text: 'Special bubble one no tail (sender)',
                  tail: false,
                  color: Color(0xFFE8E8EE),
                  sent: true,
                ),

                DateChip(date: now),
                 BubbleSpecialTwo(
                  text: 'Special two with tail (sender)',
                  isSender: true,
                  color: Color(0xFFE8E8EE),
                  sent: true,
                ),

                 BubbleSpecialTwo(
                  text: 'Special two no tail (sender)',
                  tail: false,
                  color: Color(0xFFE8E8EE),
                  delivered: true,
                ),

                BubbleSpecialOne(
                  text: 'Special bubble one no tail',
                  isSender: false,
                  tail: false,
                  color: Color(0xFF1B97F3),
                  textStyle: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          ),
          MessageBar(
            onSend: (message) {
              print("Sent: $message");
            },
            actions: [
              InkWell(
                child: const Icon(Icons.add, color: Colors.black, size: 24),
                onTap: () {},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: InkWell(
                  child:
                  const Icon(Icons.camera_alt, color: Colors.green, size: 24),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
