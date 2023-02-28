abstract class Shape {
  double calcArea();
}

class Rectangle implements Shape {
  double? _height;
  double? _width;

  Rectangle([
    this._width,
    this._height,
  ]);

  void set width(double width) {
    this._width = width;
  }

  void set height(double height) {
    this._height = height;
  }

  @override
  double calcArea() {
    return _width! * _height!;
  }
}

class Square implements Shape {
  double? _side;

  void set side(double side) => _side = side;

  Square([
    this._side,
  ]);

  @override
  double calcArea() {
    return _side! * _side!;
  }
}

//Client Code
void main(List<String> args) {
  Rectangle rec = Rectangle();
  rec.width = 5;
  rec.height = 2;

  if (rec.calcArea() == 10) print(rec.calcArea());

 Square squ = Square();
  squ.side = 5;
  if (squ.calcArea() == 25) print(squ.calcArea()); //!don't print
}
