import 'package:flutter/material.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';

class Option1 extends StatefulWidget {
  @override
  _Option1State createState() => _Option1State();
}

class _Option1State extends State<Option1> {
  String url = "http://pdf995.com/samples/pdf.pdf";
  String pdfasset = "assets/sample.pdf";
  bool _isLoading = true;
  PDFDocument document;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    document = await PDFDocument.fromURL(url);
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Option1 - Demo"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: _isLoading ? Center(child: CircularProgressIndicator()) : PDFViewer(document: document),
      ),
    );
  }
}
