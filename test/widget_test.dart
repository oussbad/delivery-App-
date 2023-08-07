import 'package:boxpend_flutter_android_app/src/boxpend.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Boxpend test', (WidgetTester tester) async {
    await tester.pumpWidget(Boxpend());
  });
}
