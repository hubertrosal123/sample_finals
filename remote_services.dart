
import 'package:http/http.dart' as http;


class RemoteServices {
  static var client = http.Client();

  static Future<String> fetchHeroList() async {
    var response = await client.get(Uri.parse(
        'https://api.pandascore.co/dota2/heroes?token=TfBqN1OTQ1YYqN2DTsZovyJsY4uvp4kRwRESiHbdFiKRdgBaEcs'));
      return response.body;
      
    
  }
}
