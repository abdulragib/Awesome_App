import 'package:shared_preferences/shared_preferences.dart';

class Constants {
  static SharedPreferences? prefs;
}

//In Flutter, Shared Preferences are used to store primitive data ( int , double , bool , string , and stringList ).
//This data is associated with the app, so when the user uninstalls your app, the data will also be deleted. It is meant for storing small amounts of data.
