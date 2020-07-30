import 'package:flutter/material.dart';
import 'package:flutter_pdf_viewer/api_service.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class Option2 extends StatefulWidget {
  @override
  _Option2State createState() => _Option2State();
}

class _Option2State extends State<Option2> {
  // String url = "http://pdf995.com/samples/pdf.pdf";
  // String pdfasset = "assets/sample.pdf";

  String _localFile;

  @override
  void initState() {
    super.initState();
    ApiService.loadPDF().then((value) {
      setState(() {
        _localFile = value;
        print(_localFile);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Option2 - Demo"),
        centerTitle: true,
      ),
      body: _localFile != null
          ? Container(
              child: PDFView(
                filePath: _localFile,
              ),
            )
          : Center(child: CircularProgressIndicator()),
    );
  }
}
