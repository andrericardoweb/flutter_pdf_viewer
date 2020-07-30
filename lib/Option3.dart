import 'package:flutter/material.dart';
import 'package:native_pdf_view/native_pdf_view.dart';

class Option3 extends StatefulWidget {
  @override
  _Option3State createState() => _Option3State();
}

class _Option3State extends State<Option3> {
  int _actualPageNumber = 1, _allPagesCount = 0;
  bool isSampleDoc = true;
  PdfController _pdfController;

  String url = "http://pdf995.com/samples/pdf.pdf";
  String pdfasset = "assets/sample.pdf";

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset(pdfasset),
    );
    super.initState();
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Option3 - Demo"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.navigate_before),
              onPressed: () {
                _pdfController.previousPage(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.ease,
                );
              },
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                '$_actualPageNumber/$_allPagesCount',
                style: TextStyle(fontSize: 20),
              ),
            ),
            IconButton(
              icon: Icon(Icons.navigate_next),
              onPressed: () {
                _pdfController.previousPage(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.ease,
                );
              },
            ),
          ],
        ),
        body: PdfView(
          documentLoader: Center(child: CircularProgressIndicator()),
          pageLoader: Center(child: CircularProgressIndicator()),
          controller: _pdfController,
          onDocumentLoaded: (document) {
            setState(() {
              _actualPageNumber = 1;
              _allPagesCount = document.pagesCount;
            });
          },
          onPageChanged: (page) {
            setState(() {
              _actualPageNumber = page;
            });
          },
        ));
  }
}
