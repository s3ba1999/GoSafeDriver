import 'package:get/get.dart';

import 'package:gosafe_driver/src/pages/homePage.dart';
import 'package:gosafe_driver/src/pages/intro_page.dart';
import 'package:gosafe_driver/src/pages/registro_page.dart';

const API_URL = "http://localhost:3000/api";

const HERE_APIKEY = "sSce-1bGwzasrYDmDVkrHVRdINGO4W_nvOOr3v1JdRY";
const HERE_URL = "https://autosuggest.search.hereapi.com/v1/autosuggest";

const HERE_REV_URL = "https://revgeocode.search.hereapi.com/v1/revgeocode";
const MAPBOX_APIKEY = "pk.eyJ1IjoiZWxyb2lyIiwiYSI6ImNraWM4NXloZjB6bjAycG12MGIxMnd1NjkifQ.7rCNg1jNBd9v6RPTnY6cVQ";

enum Routes {
  home,
  phone,
  intro,
  register,
}

// final box = Get

final pages = [
  GetPage(name: Routes.home.toString(), page: () => HomePage()),
  GetPage(name: Routes.intro.toString(), page: () => IntroPage()),
  GetPage(name: Routes.register.toString(), page: () => RegistroPage()),
];
