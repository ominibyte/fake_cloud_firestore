import 'package:fake_cloud_firestore/src/mock_field_value_platform.dart';
import 'package:cloud_firestore_platform_interface/cloud_firestore_platform_interface.dart';

class MockFieldValueFactoryPlatform extends FieldValueFactoryPlatform {
  @override
  FieldValuePlatform delete() {
    return MockFieldValuePlatform(FakeFieldValue.delete);
  }

  @override
  FieldValuePlatform serverTimestamp() {
    return MockFieldValuePlatform(FakeFieldValue.serverTimestamp);
  }

  @override
  FieldValuePlatform increment(num value) {
    return MockFieldValuePlatform(FieldValueIncrement(value));
  }

  @override
  FieldValuePlatform arrayRemove(List elements) {
    return MockFieldValuePlatform(FieldValueArrayRemove(elements));
  }

  @override
  FieldValuePlatform arrayUnion(List elements) {
    return MockFieldValuePlatform(FieldValueArrayUnion(elements));
  }
}
