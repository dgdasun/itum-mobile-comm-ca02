import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

import 'package:group_profile_app/main.dart';
import 'package:group_profile_app/screens/home_screen.dart';
import 'package:group_profile_app/screens/member_0461_screen.dart';
import 'package:group_profile_app/screens/member_0462_screen.dart';
import 'package:group_profile_app/screens/member_0463_screen.dart';
import 'package:group_profile_app/screens/member_0464_screen.dart';
import 'package:group_profile_app/screens/member_0465_screen.dart';
import 'package:group_profile_app/screens/member_0466_screen.dart';
import 'package:group_profile_app/screens/member_0467_screen.dart';
import 'package:group_profile_app/screens/member_0468_screen.dart';
import 'package:group_profile_app/screens/member_0469_screen.dart';

void main() {
  test('all member list entries connect to their screen files', () {
    final expectedScreens = <String, Type>{
      '23IT0461': Member0461Screen,
      '23IT0462': Member0462Screen,
      '23IT0463': Member0463Screen,
      '23IT0464': Member0464Screen,
      '23IT0465': Member0465Screen,
      '23IT0466': Member0466Screen,
      '23IT0467': Member0467Screen,
      '23IT0468': DiasProfile,
      '23IT0469': Member0469Screen,
    };

    for (final entry in expectedScreens.entries) {
      final member = HomeScreen.members.singleWhere(
        (member) => member.regNo == entry.key,
      );
      expect(member.screen.runtimeType, entry.value, reason: entry.key);
    }
  });

  testWidgets('home opens member profiles from the list',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => AppStateProvider(),
        child: const MaterialApp(home: HomeScreen()),
      ),
    );

    await tester.tap(find.text('Ms. G. L. Chalani'));
    await tester.pumpAndSettle();
    expect(find.byType(TabBar), findsOneWidget);

    await tester.pageBack();
    await tester.pumpAndSettle();
    await tester.tap(find.text('Mr. G. D. S. H. Chandrawansha'));
    await tester.pumpAndSettle();
    expect(find.text('// 23IT0463_PROFILE'), findsOneWidget);
    expect(find.text('sahan14hasmitha@gmail.com'), findsOneWidget);

    await tester.pageBack();
    await tester.pumpAndSettle();
    await tester.tap(find.text('Ms. P. G. D. Darshika'));
    await tester.pumpAndSettle();
    expect(find.text('Personal & Contact Details'), findsOneWidget);
  });

  test('home connects 0466 to its profile screen', () {
    final member = HomeScreen.members.singleWhere(
      (member) => member.regNo == '23IT0466',
    );

    expect(member.screen, isA<Member0466Screen>());
  });

  testWidgets('available member profiles load their local photos',
      (WidgetTester tester) async {
    final profiles = <(Widget, IconData)>[
      (const Member0462Screen(), Icons.face_3),
      (const Member0463Screen(), Icons.terminal),
      (const Member0464Screen(), Icons.eco),
      (const Member0466Screen(), Icons.person),
      (const Member0467Screen(), Icons.eco),
      (const DiasProfile(), Icons.person),
    ];

    for (final (screen, fallbackIcon) in profiles) {
      await tester.pumpWidget(MaterialApp(home: screen));
      await tester.pumpAndSettle();
      expect(find.byIcon(fallbackIcon), findsNothing);
    }
  });

  testWidgets('0461 profile loads its local photo',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => AppStateProvider(),
        child: const MaterialApp(home: Member0461Screen()),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byIcon(Icons.person), findsNothing);
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
