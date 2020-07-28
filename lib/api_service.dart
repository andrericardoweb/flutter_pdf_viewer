import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class ApiService {
  static final String PDF_URL = "http://pdf995.com/samples/pdf.pdf";

  static Future<String> loadPDF() async {
    var response = await http.get(PDF_URL);

    var dir = await getTemporaryDirectory();
    File file = new File(dir.path + "/sample.pdf");

    await file.writeAsBytes(response.bodyBytes, flush: true);
    return file.path;
  }
}
