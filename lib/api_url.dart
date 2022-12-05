import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiUrl {
  static final String frUrl = 'https://service.kemenkeu.go.id';
  static final String? serviceUrl = dotenv.env['SERVICE_URL'];
  static final String nadineUrl = 'http://10.242.171.26:5000';
  static final String nadineUrl2 = '10.242.171.26:5000';
  static final String? rapatUrl = dotenv.env['RAPAT_URL'];
  static final String? agendaUrl = dotenv.env['AGENDA_URL'];
  static final String? kuisUrl = dotenv.env['KUIS_URL'];
}
