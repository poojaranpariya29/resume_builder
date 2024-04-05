import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:printing/printing.dart';

import 'package:resume_builder/util.dart';

class PdfData {
  Future<dynamic> getPdfPreview() async {
    return PdfPreview(
      build: (format) {
        // return generateInvoice(format);
        return getPdf();
      },
    );
  }

  Future<Uint8List> getPdf() async {
    var document = Document();

    document.addPage(Page(build: (context) {
      return Column(children: [
        Text(
          "Name ${resume.name}",
          style: TextStyle(
              fontSize: 18,
              color: PdfColor.fromHex("#ff8d00"),
              fontWeight: FontWeight.bold),
        ),
        Text(
          "Email ${resume.email}",
          style: TextStyle(
              fontSize: 18,
              color: PdfColor.fromHex("#ff8d00"),
              fontWeight: FontWeight.bold),
        ),
        Text(
          "Phone ${resume.phone}",
          style: TextStyle(
              fontSize: 18,
              color: PdfColor.fromHex("#ff8d00"),
              fontWeight: FontWeight.bold),
        ),
        Text(
          "${resume.address1},${resume.address2},${resume.address3}",
          style: TextStyle(
              fontSize: 18,
              color: PdfColor.fromHex("#ff8d00"),
              fontWeight: FontWeight.bold),
        )
      ]);
    }));

    // document.addPage(Page(
    //   build: (context) {
    //     return Text("New Page");
    //   },
    // ));

    return document.save();
  }
}
