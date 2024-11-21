import 'package:dart_blake3/dart_blake3.dart';
import 'package:test/test.dart';
import 'dart:typed_data';

void main() {
  group('A group of tests', () {
    Uint8List key = Uint8List.fromList([84, 114, 97, 110, 115, 97, 99, 116, 105, 111, 110, 83, 105, 103, 110, 105, 110, 103, 72, 97, 115, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    Uint8List datalist = Uint8List.fromList([255, 49, 45, 182, 209, 36, 44, 251, 52, 241, 240, 79, 121, 133, 172, 86, 245, 60, 54, 182, 190, 106, 136, 19, 107, 167, 43, 155, 251, 36, 86, 70]);
    Uint8List hashkey = blake3WithKey(datalist,key);

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(hashkey, [81, 3, 193, 247, 24, 254, 15, 59, 71, 145, 2, 42, 127, 127, 71, 224, 32, 137, 50, 249, 98, 42, 133, 148, 66, 23, 127, 8, 139, 76, 244, 63]);
    });

    test('Second Test', () {
      Uint8List datalist2 = Uint8List.fromList([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
      Uint8List hashkey2 = blake3WithKey(datalist2, key);
      expect(hashkey2, [60, 199, 218, 19, 162, 148, 203, 113, 139, 237, 19, 122, 42, 1, 166, 193, 41, 84, 192, 110, 192, 42, 157, 33, 29, 127, 99, 4, 212, 249, 204, 130]);
    });

    test('Third Test', () {
      Uint8List datalist3 = Uint8List.fromList([]);
      Uint8List hashkey3 = blake3WithKey(datalist3, key);
      expect(hashkey3, [42, 191, 41, 158, 33, 51, 168, 96, 52, 141, 221, 173, 119, 166, 140, 214, 125, 186, 159, 133, 85, 40, 24, 75, 227, 37, 251, 161, 138, 232, 250, 241]);
      
    });

    test('Fourth Test', () {
      Uint8List key2 = Uint8List.fromList([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32]);
      Uint8List hashkey4 = blake3WithKey(datalist, key2);
      expect(hashkey4, [219, 185, 191, 76, 10, 142, 28, 27, 34, 46, 150, 216, 125, 148, 153, 23, 209, 34, 84, 105, 171, 92, 91, 56, 94, 52, 189, 245, 161, 64, 19, 52]);
    });
  });
}
