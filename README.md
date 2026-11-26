# Mobile Communication – Continuous Assessment 02 (CA 02)
## Group Profile Flutter Application

A multi-screen Flutter mobile application featuring Firebase Email/Password Authentication, state management using `Provider` and `setState`, and 9 uniquely designed member bio screens.

### Test Login Credentials (For Lecturer)
- **Email:** `lecturer@itum.mrt.ac.lk`
- **Password:** `Pass@1234`

---

### Group Members & Assigned Screens

| No. | Registration No. | Member Name | Screen File | Unique Design Style |
|---|---|---|---|---|
| 1 | 23IT0461 | Ms. B. M. I. K. Basnayaka | `lib/screens/member_0461_screen.dart` | Lavender Glassmorphism & Gradient Header |
| 2 | 23IT0462 | Ms. G. L. Chalani | `lib/screens/member_0462_screen.dart` | Interactive TabBar & Coral Pastel Theme |
| 3 | 23IT0463 | Mr. G. D. S. H. Chandrawansha | `lib/screens/member_0463_screen.dart` | Dark Cyber-Tech Slate & Neon Cyan Grid |
| 4 | 23IT0464 | Ms. P. G. D. Darshika | `lib/screens/member_0464_screen.dart` | Emerald Nature Accordion (`ExpansionTile`) |
| 5 | 23IT0465 | Mr. B. C. M. D. De Silva | `lib/screens/member_0465_screen.dart` | Royal Navy Executive Timeline Layout |
| 6 | 23IT0466 | Mr. U. B. U. A. Deshapriya | `lib/screens/member_0466_screen.dart` | Warm Sunset Bento Box Grid |
| 7 | 23IT0467 | Ms. K. H. M. Dewanga | `lib/screens/member_0467_screen.dart` | Editorial Magazine Split-Banner & Serif Style |
| 8 | 23IT0468 | Mr. K. M. G. D. G. Dias | `lib/screens/member_0468_screen.dart` | Minimalist Monochrome & Indigo Floating Card |
| 9 | 23IT0469 | Mr. D. G. D. Dilshan | `lib/screens/member_0469_screen.dart` | Modern Developer Portfolio (`SliverAppBar` + Skill Bars) |

---

### Setup Instructions
1. Run `flutter pub get` to install dependencies (`firebase_core`, `firebase_auth`, `provider`).
2. Configure Firebase using `flutterfire configure` (generates `lib/firebase_options.dart`) and enable **Email/Password** sign-in in Firebase Console.
3. Add member photos into `assets/images/` matching the filenames in each screen (e.g., `23IT0469.jpg`) or keep the built-in avatar fallback.
4. Run the app using `flutter run`.
