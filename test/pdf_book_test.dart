import 'package:flutter_test/flutter_test.dart';
import 'package:pdf_book/pdf_book.dart';
import 'package:pdf_book/pdf_book_platform_interface.dart';
import 'package:pdf_book/pdf_book_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPdfBookPlatform
    with MockPlatformInterfaceMixin
    implements PdfBookPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  showAleartDialog() {
    // TODO: implement showAleartDialog
    throw UnimplementedError();
  }
}

void main() {
  final PdfBookPlatform initialPlatform = PdfBookPlatform.instance;

  test('$MethodChannelPdfBook is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPdfBook>());
  });

  test('getPlatformVersion', () async {
    PdfBook pdfBookPlugin = PdfBook();
    MockPdfBookPlatform fakePlatform = MockPdfBookPlatform();
    PdfBookPlatform.instance = fakePlatform;

    expect(await pdfBookPlugin.getPlatformVersion(), '42');
  });
}
