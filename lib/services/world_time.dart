import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String time = '';
  String flag;
  String url;
  bool isDaytime = true;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      // Effectuer une requête HTTP pour récupérer l'heure
      http.Response response = await http.get(
          Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      if (response.statusCode == 200) {
        Map data = jsonDecode(response.body);
        String datetime = data['datetime'];
        String offset = data['utc_offset'].substring(1, 3);
        String offsetMinutes = data['utc_offset'].substring(4, 6);

        DateTime now = DateTime.parse(datetime);
        now = now.add(Duration(
            hours: int.parse(offset), minutes: int.parse(offsetMinutes)));

        isDaytime = now.hour > 6 && now.hour < 20; // Jour ou nuit
        time = DateFormat.jm().format(now); // Formater l'heure
      } else {
        throw Exception('Erreur lors de la récupération des données');
      }
    } catch (e) {
      print('Erreur: $e');
      time = 'Impossible de récupérer l\'heure';
    }
  }
}
