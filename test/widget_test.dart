import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

import 'package:group_profile_app/main.dart';
import 'package:group_profile_app/screens/home_screen.dart';
import 'package:group_profile_app/screens/member_0463_screen.dart';
import 'package:group_profile_app/screens/member_0469_screen.dart';

void main() {
  testWidgets('home opens the 0463 GitHub profile',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => AppStateProvider(),
        child: const MaterialApp(home: HomeScreen()),
      ),
    );

    await tester.tap(find.text('Mr. G. D. S. H. Chandrawansha'));
    await tester.pumpAndSettle();

    expect(find.text('// 23IT0463_PROFILE'), findsOneWidget);
    expect(find.text('sahan14hasmitha@gmail.com'), findsOneWidget);
  });

  testWidgets('0463 profile loads its local photo',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: Member0463Screen()),
    );
    await tester.pumpAndSettle();

    expect(find.byIcon(Icons.terminal), findsNothing);
  });

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
