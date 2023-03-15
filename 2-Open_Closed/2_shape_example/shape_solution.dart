abstract class Shape {
  void draw();
}

class Rectangle extends Shape {
  double width;
  double length;

  Rectangle({
    required this.width,
    required this.length,
  });

  @override
  void draw() {}
}

class Circle extends Shape {
  double radius;

  Circle({
    required this.radius,
  });

  @override
  void draw() {}
}

// * now can add classes extends from Shape

class ShapeDrawer {
  //this is close to change
  void drawShape(Shape shape) {
    shape.draw();
  }
}

void main(List<String> args) {
  Rectangle rec = Rectangle(width: 23, length: 4);
  ShapeDrawer drawer = ShapeDrawer();
  drawer.drawShape(rec);
}
