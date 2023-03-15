import '1-mail.dart';

class Notification {
  //!bad design tightly coupled class

  final GMail _gMail = GMail();
  final HotMail _hotMail = HotMail();
  
  //!add web mail
  final WebMail _webMail = WebMail();

  void sendGMail() {
    _gMail.send();
  }

  void sendHotMail() {
    _hotMail.send();
  }

  void sendWebMail() {
    _webMail.send();
  }
}
