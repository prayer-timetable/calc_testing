part of calc_testing;

void main() async {
  // needed for notifications and workmanager
  WidgetsFlutterBinding.ensureInitialized();

  // HIVE
  await Hive.initFlutter();

  await Hive.openBox('prefs');
  await Hive.openBox('settings');
  // if (!kIsWeb) {
  //   var dir = await getApplicationDocumentsDirectory();
  //   Hive.init(dir.path);
  // }
  // Hive.registerAdapter(TodoAdapter(), 0)

  // NOTIFICATIONS
  // await notificationStore.callNotifications();

  // runApp(ChangeNotifierProvider(
  //   child: MyApp(),
  //   create: (context) => AppProvider(),
  // ));
  runApp(MyApp());

  // if (!Platform.isMacOS)
  //   BackgroundFetch.registerHeadlessTask(backgroundFetchHeadlessTask);
}
