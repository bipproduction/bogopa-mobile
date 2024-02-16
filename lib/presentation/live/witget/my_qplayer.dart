import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class MyQPlayer extends StatelessWidget {
  const MyQPlayer({super.key});

  final content = '''
<!DOCTYPE html>

<html>

<head>

<title>Page Title</title>

<meta
 
name="viewport"
 
content="width=device-width, initial-scale=1.0">

<style>
  /* Ensure videos inherit width from parent container */
  video {
    width: 100%;
    height: auto; /* Maintain aspect ratio */
  }
</style>
</head>
<body>

<h1>My First Heading</h1>
<p>My first paragraph.</p>

<div style="max-width: 500px;"> <video id="videoElement" controls autoplay playsinline></video>
</div>

<script src="https://cdn.bootcss.com/flv.js/1.5.0/flv.min.js"></script>

<script>

  
if (flvjs.isSupported()) {
    var videoElement = document.getElementById('videoElement');
    var flvPlayer = flvjs.createPlayer({
      type: 'flv',
      url: 'https://stream.wibudev.com/live/bips-MacBook-Air-local.flv'
    });
    flvPlayer.attachMediaElement(videoElement);
    flvPlayer.load();
  }
</script>
</body>
</html>

''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: WebViewX(
        javascriptMode: JavascriptMode.unrestricted,
        initialMediaPlaybackPolicy: AutoMediaPlaybackPolicy.alwaysAllow,
        initialSourceType: SourceType.html,
        initialContent: content,
        width: MediaQuery.of(context).size.width, // Expand to full width
        height: double.infinity,
      )),
    );
  }
}