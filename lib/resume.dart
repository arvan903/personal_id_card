import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class CvViewer extends StatefulWidget {
  const CvViewer({Key? key}) : super(key: key);

  @override
  State<CvViewer> createState() => _CvViewerState();
}

class _CvViewerState extends State<CvViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        title: Text(
          'Full Resume in Offline Mode',
          style: TextStyle(
              fontFamily: 'Pacifico',
              color: Colors.blue.shade900,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: SfPdfViewer.asset('pdf/cv.pdf'),
    );
  }
}
