import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/favorite_jokes_provider.dart';
import 'providers/jokes_provider.dart';
import 'screens/category_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print('Background message received: ${message.messageId}');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Received a message in foreground: ${message.notification?.title}');
    if (message.notification != null) {
    }
  });

  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    print('Notification clicked!');
  });

  FirebaseMessaging messaging = FirebaseMessaging.instance;
  await messaging.subscribeToTopic('dailyJokes');
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FavoriteJokesProvider()),
        ChangeNotifierProvider(create: (_) => JokesProvider()),
      ],
      child: MaterialApp(
        title: 'Favorite Jokes App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CategoryScreen(),
      ),
    );
  }
}
