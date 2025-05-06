import 'dart:convert';
import 'dart:developer';
import 'dart:typed_data';
import 'package:image/image.dart' as img;
import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

part 'video_translate_state.dart';

class VideoTranslateCubit extends Cubit<VideoTranslateState> {
  VideoTranslateCubit() : super(VideoTranslateInitial());

  late CameraController controller;

  late Interpreter interpreter;

  late List<String> labels;

  bool isModelLoaded = false;

  Future<void> initializeCamera(List<CameraDescription> cameras) async {
    final frontCamera = cameras[1];

    controller = CameraController(
      frontCamera,
      ResolutionPreset.medium,
      enableAudio: false,
    );
    await controller.initialize();

    emit(VideoTranslateCameraOn(controller));
  }

  void stopCamera() {
    controller.dispose();
    emit(VideoTranslateCameraOff());
  }
}
