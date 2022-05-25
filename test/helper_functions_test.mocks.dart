// Mocks generated by Mockito 5.2.0 from annotations
// in firebase_cached_image/test/helper_functions_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;
import 'dart:io' as _i6;
import 'dart:typed_data' as _i5;

import 'package:firebase_storage/firebase_storage.dart' as _i2;
import 'package:firebase_storage_platform_interface/firebase_storage_platform_interface.dart'
    as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeFirebaseStorage_0 extends _i1.Fake implements _i2.FirebaseStorage {}

class _FakeReference_1 extends _i1.Fake implements _i2.Reference {}

class _FakeFullMetadata_2 extends _i1.Fake implements _i3.FullMetadata {}

class _FakeListResult_3 extends _i1.Fake implements _i2.ListResult {}

class _FakeUploadTask_4 extends _i1.Fake implements _i2.UploadTask {}

class _FakeDownloadTask_5 extends _i1.Fake implements _i2.DownloadTask {}

/// A class which mocks [Reference].
///
/// See the documentation for Mockito's code generation for more information.
class MockReference extends _i1.Mock implements _i2.Reference {
  MockReference() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.FirebaseStorage get storage =>
      (super.noSuchMethod(Invocation.getter(#storage),
          returnValue: _FakeFirebaseStorage_0()) as _i2.FirebaseStorage);
  @override
  String get bucket =>
      (super.noSuchMethod(Invocation.getter(#bucket), returnValue: '')
          as String);
  @override
  String get fullPath =>
      (super.noSuchMethod(Invocation.getter(#fullPath), returnValue: '')
          as String);
  @override
  String get name =>
      (super.noSuchMethod(Invocation.getter(#name), returnValue: '') as String);
  @override
  _i2.Reference get root => (super.noSuchMethod(Invocation.getter(#root),
      returnValue: _FakeReference_1()) as _i2.Reference);
  @override
  _i2.Reference child(String? path) =>
      (super.noSuchMethod(Invocation.method(#child, [path]),
          returnValue: _FakeReference_1()) as _i2.Reference);
  @override
  _i4.Future<void> delete() =>
      (super.noSuchMethod(Invocation.method(#delete, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<String> getDownloadURL() =>
      (super.noSuchMethod(Invocation.method(#getDownloadURL, []),
          returnValue: Future<String>.value('')) as _i4.Future<String>);
  @override
  _i4.Future<_i3.FullMetadata> getMetadata() => (super.noSuchMethod(
          Invocation.method(#getMetadata, []),
          returnValue: Future<_i3.FullMetadata>.value(_FakeFullMetadata_2()))
      as _i4.Future<_i3.FullMetadata>);
  @override
  _i4.Future<_i2.ListResult> list([_i3.ListOptions? options]) =>
      (super.noSuchMethod(Invocation.method(#list, [options]),
              returnValue: Future<_i2.ListResult>.value(_FakeListResult_3()))
          as _i4.Future<_i2.ListResult>);
  @override
  _i4.Future<_i2.ListResult> listAll() =>
      (super.noSuchMethod(Invocation.method(#listAll, []),
              returnValue: Future<_i2.ListResult>.value(_FakeListResult_3()))
          as _i4.Future<_i2.ListResult>);
  @override
  _i4.Future<_i5.Uint8List?> getData([int? maxSize = 10485760]) =>
      (super.noSuchMethod(Invocation.method(#getData, [maxSize]),
              returnValue: Future<_i5.Uint8List?>.value())
          as _i4.Future<_i5.Uint8List?>);
  @override
  _i2.UploadTask putData(_i5.Uint8List? data,
          [_i3.SettableMetadata? metadata]) =>
      (super.noSuchMethod(Invocation.method(#putData, [data, metadata]),
          returnValue: _FakeUploadTask_4()) as _i2.UploadTask);
  @override
  _i2.UploadTask putBlob(dynamic blob, [_i3.SettableMetadata? metadata]) =>
      (super.noSuchMethod(Invocation.method(#putBlob, [blob, metadata]),
          returnValue: _FakeUploadTask_4()) as _i2.UploadTask);
  @override
  _i2.UploadTask putFile(_i6.File? file, [_i3.SettableMetadata? metadata]) =>
      (super.noSuchMethod(Invocation.method(#putFile, [file, metadata]),
          returnValue: _FakeUploadTask_4()) as _i2.UploadTask);
  @override
  _i2.UploadTask putString(String? data,
          {_i3.PutStringFormat? format = _i3.PutStringFormat.raw,
          _i3.SettableMetadata? metadata}) =>
      (super.noSuchMethod(
          Invocation.method(
              #putString, [data], {#format: format, #metadata: metadata}),
          returnValue: _FakeUploadTask_4()) as _i2.UploadTask);
  @override
  _i4.Future<_i3.FullMetadata> updateMetadata(_i3.SettableMetadata? metadata) =>
      (super.noSuchMethod(Invocation.method(#updateMetadata, [metadata]),
              returnValue:
                  Future<_i3.FullMetadata>.value(_FakeFullMetadata_2()))
          as _i4.Future<_i3.FullMetadata>);
  @override
  _i2.DownloadTask writeToFile(_i6.File? file) =>
      (super.noSuchMethod(Invocation.method(#writeToFile, [file]),
          returnValue: _FakeDownloadTask_5()) as _i2.DownloadTask);
}
