import 'package:get/get.dart';
import 'package:haishin_kit/rtmp_connection.dart';
import 'package:haishin_kit/rtmp_stream.dart';

// ignore: non_constant_identifier_names
final val_is_stream = false.obs;
// ignore: non_constant_identifier_names
final val_stream = <RtmpStream>[].obs;
// ignore: non_constant_identifier_names
final val_connection = <RtmpConnection>[].obs;

// ignore: non_constant_identifier_names
final val_coba = Apa().obs;

class Apa {
  late RtmpConnection? connection;
}
