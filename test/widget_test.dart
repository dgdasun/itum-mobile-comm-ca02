import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:group_profile_app/screens/member_0469_screen.dart';

void main() {
  testWidgets('member profile displays details and toggles qualifications',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: Member0469Screen()),
    );

    expect(find.text('D. G. Dasun Dilshan'), findsOneWidget);
    expect(find.text('Academic Qualifications'), findsOneWidget);
    expect(
      find.text(
        '• Diploma in Information Technology – Institute of Technology, '
        'University of Moratuwa (Jan 2025 – Present)',
      ),
      findsOneWidget,
    );

    await tester.tap(find.text('Hide'));
    await tester.pumpAndSettle();

    expect(find.text('Hide'), findsNothing);
    expect(find.text('Show'), findsOneWidget);
    expect(
      find.text(
        '• Diploma in Information Technology – Institute of Technology, '
        'University of Moratuwa (Jan 2025 – Present)',
      ),
      findsNothing,
    );
  });
}
