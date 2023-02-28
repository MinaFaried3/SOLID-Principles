class Rectangle {
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

  double calcArea() {
    return _width! * _height!;
  }
}

class Square extends Rectangle {
  @override
  void set width(double width) {
    super.width = width;
    super.height = width;
  }

  @override
  void set height(double height) {
    super.width = height;
    super.height = height;
  }
}

//Client CODE
void main(List<String> args) {
  Rectangle rec = Rectangle();
  rec.width = 5;
  rec.height = 2;

  if (rec.calcArea() == 10) print(rec.calcArea());

  rec = Square();
  rec.width = 5;
  rec.height = 2;

  if (rec.calcArea() == 10) print(rec.calcArea()); //!don't print
}
