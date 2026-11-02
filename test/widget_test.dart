import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_focus_timer/main.dart';

void main() {
  testWidgets('shows the app title and sample entries', (WidgetTester tester) async {
    await tester.pumpWidget(const DemoApp());
    expect(find.text('Focus Timer'), findsWidgets);
    expect(find.text('Focus block'), findsOneWidget);
  });
}
