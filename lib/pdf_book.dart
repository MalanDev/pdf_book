import 'pdf_book_platform_interface.dart';

class PdfBook {
  Future<String?> getPlatformVersion() {
    return PdfBookPlatform.instance.getPlatformVersion();
  }

  showAleartDialog() {
    return PdfBookPlatform.instance.showAleartDialog();
  }
}
