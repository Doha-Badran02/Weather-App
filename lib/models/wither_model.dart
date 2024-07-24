class WitherModel {
  final String nameCity;
  final DateTime date;
  final String image;
  final double temp;
  final double maxTemp;
  final double mainTemp;
  final String wetherCondition;

  WitherModel(
      {required this.nameCity,
      required this.date,
      required this.image,
      required this.temp,
      required this.maxTemp,
      required this.mainTemp,
      required this.wetherCondition});

  factory WitherModel.fromJason(jason) {
    return WitherModel(
      nameCity: jason['location']['name'],
      date: DateTime.parse(jason['current']['last_updated']),
      temp: jason['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxTemp: jason['forecast']['forecastday'][0]['day']['maxtemp_c'],
      mainTemp: jason['forecast']['forecastday'][0]['day']['mintemp_c'],
      wetherCondition: jason['forecast']['forecastday'][0]['day']['condition']['text'],
      image: jason['forecast']['forecastday'][0]['day']['condition']['icon']
    );
  }
}
