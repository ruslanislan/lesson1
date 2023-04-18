import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lesson1/core/hooks/dispatcher_hook.dart';
import 'package:lesson1/features/weather/actions/get_weather_by_city_name_action.dart';
import 'package:lesson1/services/push_notification_service.dart';

void useFirebaseMessagingOpenedAppListener() {
  final dispatch = useDispatcher();

  void _handleCityEvent(Map<String, dynamic> data) {
    final cityName = data['cityName'];
    dispatch(GetWeatherByCityNameAction(cityName: cityName));
  }

  void _handleMessageOpenedApp(RemoteMessage? event) {
    if (event == null) {
      return;
    }

    final data = event.data;

    if (data.containsKey('type')) {
      final kind = data['type'] as String;

      switch (kind) {
        case 'city':
          _handleCityEvent(data);
          break;
        default:
          return;
      }
    }
  }

  useEffect(() {
    final onMessageOpenedApp =
        FirebaseMessaging.onMessageOpenedApp.listen(_handleMessageOpenedApp);
    return onMessageOpenedApp.cancel;
  }, []);
}

void usePushNotificationToken() {
  useEffect(
    () {
      Future<void> _initialize() async {
        final firebaseMessaging = FirebaseMessaging.instance;

        firebaseMessaging
            .getToken(vapidKey: 'your web key here')
            .then((token) => print('PushToken: $token'));

        firebaseMessaging.onTokenRefresh
            .listen((token) => print('PushToken Update: $token'));
      }

      _initialize();
      return null;
    },
  );
}

void useFirebaseMessagingForegroundListener() {
  useEffect(() {
    final onMessage =
        FirebaseMessaging.onMessage.listen(_handleForegroundMessage);
    return onMessage.cancel;
  }, []);
}

void _handleForegroundMessage(RemoteMessage? message) {
  print('Got a message whilst in the foreground!');
  print('Message data: ${message?.data}');

  if (message?.notification != null) {
    print('Message also contained a notification: '
        '${message?.notification?.body}');
  }
}

void useFirebaseMessagingBackgroundListener() {
  useEffect(() {
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    return null;
  }, []);
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
// If you're going to use other Firebase services in the background, such as
// Firestore,
// make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();

  print('Handling a background message: ${message.messageId}');
}

void useNotificationPermissionRequest() {
  useEffect((){
    requestNotificationPermissions();
    return null;
  });
}