import 'package:get/get.dart';
import 'package:haishin_kit/rtmp_connection.dart';
import 'package:haishin_kit/rtmp_stream.dart';

final val_is_stream = false.obs;
final val_stream = <RtmpStream>[].obs;
final val_connection = <RtmpConnection>[].obs;

final val_coba = Apa().obs;

class Apa {
  late RtmpConnection? connection;
}
