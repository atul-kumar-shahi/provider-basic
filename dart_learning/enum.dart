
//specifies the enum type outside of the main function 
enum Weather {
  sunny,
  snowy,
  cloudy,
  rainy,
}

void main() {
  //specifies the weather using the enumerable values
  const weatherToday = Weather.sunny;
  switch (weatherToday) {  //none other than the weather difined can be used in the swith case
    case Weather.sunny:
      print('put on sunscreem');
    case Weather.snowy:
      print('Bring your skis');
    case Weather.rainy:
    case Weather.rainy:
      print('Bring an umbrella');
    default:
      print('not a specified weather today');
  }
}
