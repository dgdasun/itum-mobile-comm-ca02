import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';

// NOTE: Run `flutterfire configure` in terminal to generate firebase_options.dart
// and uncomment the line below + options in Firebase.initializeApp():
// import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ChangeNotifierProvider(
      create: (_) => AppStateProvider(),
      child: const GroupProfileApp(),
    ),
  );
}

/// State Management using Provider (tracks auth loading, favorites, and theme)
class AppStateProvider extends ChangeNotifier {
  final Set<String> _likedMembers = {};
  bool _isDarkHome = false;

  bool isLiked(String regNo) => _likedMembers.contains(regNo);
  bool get isDarkHome => _isDarkHome;

  void toggleLike(String regNo) {
    if (_likedMembers.contains(regNo)) {
      _likedMembers.remove(regNo);
    } else {
      _likedMembers.add(regNo);
    }
    notifyListeners();
  }

  void toggleHomeTheme() {
    _isDarkHome = !_isDarkHome;
    notifyListeners();
  }
}

class GroupProfileApp extends StatelessWidget {
  const GroupProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ITUM Group Profile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
      ),
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }
          if (snapshot.hasData) {
            return const HomeScreen();
          }
          return const LoginScreen();
        },
      ),
    );
  }
}
