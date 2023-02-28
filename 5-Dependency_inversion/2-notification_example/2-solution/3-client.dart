import '1-mail.dart';
import '2-notification.dart';

void main(List<String> args) {
  IMail mailService = HotMail();

  Notification notification = Notification(mailService); //constructor injection

  notification.sendMail();

  notification.sendEmailByProviderType(GMail()); //method injection
}
