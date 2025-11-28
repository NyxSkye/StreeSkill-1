// lib/screens/player_screen.dart
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class PlayerScreen extends StatefulWidget {
  final String videoUrl;
  final String reelTitle;

  const PlayerScreen({super.key, required this.videoUrl, required this.reelTitle});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  Future<void> _initializePlayer() async {
    // 1. Initialize the Video Player
    _videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));
    await _videoPlayerController.initialize();

    // 2. Initialize the Chewie Controller (UI controls wrapper)
    setState(() {
      _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
        aspectRatio: 9 / 16, // KEY: Vertical Reel Format (9:16)
        autoPlay: true,
        looping: true,
        showControls: false, // We'll build our own custom controls (Dubbing/Captions)
        errorBuilder: (context, errorMessage) {
          return Center(
            child: Text('Video Load Error: $errorMessage', style: const TextStyle(color: Colors.white)),
          );
        },
      );
    });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Dark background for video
      body: SafeArea(
        child: _chewieController != null && _chewieController!.videoPlayerController.value.isInitialized
            ? Stack(
                children: [
                  // --- 1. Video Player ---
                  Center(
                    child: AspectRatio(
                      aspectRatio: _videoPlayerController.value.aspectRatio,
                      child: Chewie(controller: _chewieController!),
                    ),
                  ),

                  // --- 2. Custom Reel UI / Caption Overlay ---
                  Positioned(
                    bottom: 80,
                    left: 20,
                    right: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.reelTitle, style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),

                        // Placeholder for Captions (Smart Tech Feature)
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(color: Colors.black54, borderRadius: BorderRadius.circular(4)),
                          child: const Text('Caption: Namaste! Tools ready? Ghar baithe kamao! 🇮🇳',
                            style: TextStyle(color: Colors.white, fontSize: 14)),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}