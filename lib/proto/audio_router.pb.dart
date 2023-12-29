//
//  Generated code. Do not modify.
//  source: audio_router.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Test extends $pb.GeneratedMessage {
  factory Test({
    $core.String? testS,
    $core.int? testI,
  }) {
    final $result = create();
    if (testS != null) {
      $result.testS = testS;
    }
    if (testI != null) {
      $result.testI = testI;
    }
    return $result;
  }
  Test._() : super();
  factory Test.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Test.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Test', package: const $pb.PackageName(_omitMessageNames ? '' : 'audio_router'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'testS')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'testI', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Test clone() => Test()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Test copyWith(void Function(Test) updates) => super.copyWith((message) => updates(message as Test)) as Test;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Test create() => Test._();
  Test createEmptyInstance() => create();
  static $pb.PbList<Test> createRepeated() => $pb.PbList<Test>();
  @$core.pragma('dart2js:noInline')
  static Test getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Test>(create);
  static Test? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get testS => $_getSZ(0);
  @$pb.TagNumber(1)
  set testS($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTestS() => $_has(0);
  @$pb.TagNumber(1)
  void clearTestS() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get testI => $_getIZ(1);
  @$pb.TagNumber(2)
  set testI($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTestI() => $_has(1);
  @$pb.TagNumber(2)
  void clearTestI() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
