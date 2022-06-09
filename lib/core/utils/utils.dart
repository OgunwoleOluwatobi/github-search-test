import 'package:intl/intl.dart';
import 'package:phonon_test/core/utils/exports.dart';
import 'package:stacked_services/stacked_services.dart';

class Utils{
  static double statusBarPadding = MediaQuery.of(StackedService.navigatorKey!.currentContext!).padding.top;
  
  static final SystemUiOverlayStyle darkWhiteNav = Platform.isIOS ? const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.light
  ) : const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.dark
  );

}