import '2-notification.dart';

void main(List<String> args) {
  Notification notification = Notification();

  notification.sendGMail();
  notification.sendHotMail();
  notification.sendWebMail();
}
