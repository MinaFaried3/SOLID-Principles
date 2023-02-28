class Rectangle {
  double width;
  double length;

  Rectangle({
    required this.width,
    required this.length,
  });

  void drawRectangle() {}
}

class Square {
  double side;

  Square({
    required this.side,
  });

  void drawSquare() {}
}

//TODO - Triangle class

class ShapeDrawer {
  void drawShape(Object shape) {
    if (shape is Rectangle) {
      shape.drawRectangle();
    } else if (shape is Square) {
      shape.drawSquare();
    }
    //TODO - Tringle draw
  }
}
