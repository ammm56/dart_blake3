import 'package:dart_blake3/dart_blake3.dart';
import 'dart:typed_data';

void main() {
  Uint8List key = Uint8List.fromList([84, 114, 97, 110, 115, 97, 99, 116, 105, 111, 110, 83, 105, 103, 110, 105, 110, 103, 72, 97, 115, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
  Uint8List datalist = Uint8List.fromList([255, 49, 45, 182, 209, 36, 44, 251, 52, 241, 240, 79, 121, 133, 172, 86, 245, 60, 54, 182, 190, 106, 136, 19, 107, 167, 43, 155, 251, 36, 86, 70]);
  Uint8List hashkey = blake3WithKey(datalist,key);
  print(hashkey);

  Uint8List hash = blake3WithDefaultKey(datalist);
  print(hash);
}
