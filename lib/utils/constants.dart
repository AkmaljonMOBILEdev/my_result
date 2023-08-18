const String baseUrl = "https://restcountries.com";
const String yandexUrl = "https://geocode-maps.yandex.ru";
const String apiKey = "c652e55f-1581-4bbc-b1e9-99cc4d3ee4b5";
const String apiKeyForMap = "AIzaSyDGN71oNxuewxixgEmpR8RnVAZKs5-JQZw";


const String fcmToken = "AAAAcQMdSmQ:APA91bF2uR8Pgc4yqeekQVFgMYk_soX-feAK_TVuLAGUQAlFJpRtksZceln9gPABu_iiz8OADt7T8niHWPPGejPZg4cgQRrSNwk-ZgaiXCh0nmGSsbHVYDhqJ8hmkSnEiF1AXtpUi01c";
const String users = "users";

const List<String> roles = [
  "Admin",
  "Owner",
  "User"
];

class TimeoutConstants{
  static int connectTimeout = 30;
  static int receiveTimeout = 20;
  static int sendTimeout = 60;
}

const List<String> mapTypes = [
  "Default",
  "Satellite",
  "Terrain"
];

const List<String> kindList = [
  "house",
  "metro",
  "district",
  "street",
];

const List<String> langList = [
  "UZ",
  "RU",
  "EN",
  "TR",
];