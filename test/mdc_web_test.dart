import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    String fixture;

    setUp(() {
      fixture = 'some fixture';
    });

    test('First Test', () {
      expect(fixture, equals('some fixture'));
    });
  });
}
