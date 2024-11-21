# dart_blake3

This project is a Dart implementations of the BLAKE3 cryptographic hash function.

This a direct port of the python implementation [pure_python_blake3](https://github.com/oconnor663/pure_python_blake3).

This is the [Rust reference
implementation](https://github.com/BLAKE3-team/BLAKE3/blob/master/reference_impl/reference_impl.rs). It supports all the features of BLAKE3, including keyed hashing, key derivation, and extendable output. 

## Examples

```
import 'package:dart_blake3/dart_blake3.dart';
import 'dart:typed_data';

#hash key
Uint8List key = Uint8List.fromList([1,2,3,4,5,6]);
Uint8List datalist = Uint8List.fromList([7,8,9]);
Uint8List hashkey = blake3WithKey(datalist,key);

#hash
Uint8List hash = blake3WithDefaultKey(datalist);


```
