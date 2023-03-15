abstract class IMail {
  void send();
}

class HotMail implements IMail {
  String address = 'address';
  String ToAddress = 'toAddress';
  String from = 'from email';
  
  @override
  void send() {/* code */}
}

class GMail implements IMail {
  String address = 'address';
  String ToAddress = 'toAddress';
  String from = 'from email';
  
  @override
  void send() {/* code */}
}


class WebMail implements IMail {
  String address = 'address';
  String ToAddress = 'toAddress';
  String from = 'from email';
  
  @override
  void send() {/* code */}
}
