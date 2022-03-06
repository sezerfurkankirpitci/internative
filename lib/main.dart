import 'package:flutter/material.dart';
import 'package:internative/data/favorite_count.dart';
import 'package:internative/data/users_model.dart';
import 'package:internative/screens/favorite_screen.dart';
import 'package:internative/screens/home_screen.dart';
import 'package:internative/screens/login_screen.dart';
import 'package:internative/screens/nav_screen.dart';
import 'package:internative/screens/profile_screen.dart';
import 'package:internative/screens/register_screen.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await User().createSharedPref();
  Provider.debugCheckInvalidValueType = null;
  runApp(MultiProvider(providers: [
    Provider(create: (context) => User()),
    ChangeNotifierProvider(create: (context) => FavoriteCount())
  ], child: Internative()));
}

class Internative extends StatelessWidget {
  const Internative({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.watch<User>().getTokenFromSharedPref();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:
          (Provider.of<User>(context).token() == null) ? '/login' : '/nav',
      routes: {
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/nav': (context) => NavigationScreen(),
        '/home': (context) => HomeScreen(),
        '/favorite': (context) => FavoriteScreen(),
        '/profile': (context) => ProfileScreen(),
        // '/article-detail' : (context) => ArticleDetailScreen(),
      },
    );
  }
}
