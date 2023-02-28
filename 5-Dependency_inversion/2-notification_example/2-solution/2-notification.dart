import '1-mail.dart';

class Notification {
  final IMail mailService;

  //constructor injection
  Notification(this.mailService);

  void sendMail() {
    this.mailService.send();
  }

  //method injection
  void sendEmailByProviderType(IMail mailService) {
    mailService.send();
  }
}
