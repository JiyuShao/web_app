import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:web_app/utils/logger.dart';

class Result {
  final String imagePath;
  final String modelPath;

  Result({required this.imagePath, required this.modelPath});
}

class ResultPage extends StatelessWidget {
  final Result result;

  const ResultPage({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    logger.i('展示结果: $result');
    return Scaffold(
      appBar: AppBar(
        title: const Text('生成结果'),
      ),
      body: Center(
        child: ModelViewer(
          backgroundColor: const Color.fromARGB(0xFF, 0xEE, 0xEE, 0xEE),
          src: result.modelPath,
          alt: 'A 3D model',
          ar: true,
          autoRotate: true,
          disableZoom: false,
        ),
      ),
    );
  }
}
