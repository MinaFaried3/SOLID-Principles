class Guitar {
  String maker;
  String model;
  int volume;

  Guitar({
    required this.maker,
    required this.model,
    required this.volume,
  });
}

class GuitarWithFlames extends Guitar {
  String flameColor;
 
  GuitarWithFlames({
    required super.maker,
    required super.model,
    required super.volume,
    required this.flameColor,
  });
}
