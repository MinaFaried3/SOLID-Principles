# SOLID-Principles
# SOLID Principles - simple and easy explanation

SOLID Principles is a coding standard that all developers should have a clear 
concept for developing software in a proper way to avoid a bad design. 
It was promoted by Robert C Martin and is used across the object-oriented design spectrum.
When applied properly it makes your code more extendable, logical and easier to read.

When the developer builds a software follow the bad design, the code can become 
inflexible and more brittle, small changes in the software can result in bugs. 
For these reasons, we should follow SOLID Principles.

It takes some time to understand, but if you write code following the principles 
it will improve code quality and will help to understand the most well-designed software.

To understand SOLID principles, you have to know the use of the interface clearly.
If your concept is not clear about interface then you can read this [doc](https://medium.com/@ankitgg66/being-solid-in-dart-1933037168ae).

I'm going to try to explain SOLID Principles in simplest way so that it's easy 
for beginners to understand. Let's go through each principle one by one:


## Single Responsibility Principle :

>A class should have one, and only one, reason to change.

One class should only serve one purpose, this does not imply that each class should have only one method but they should all relate directly to the responsibility of the class. All the methods and properties should all work towards the same goal. When a class serves multiple purposes or responsibility then it should be made into a new class.

Please look at the following code :

```dart
class Customer {
  String? name;

  //this is a responsibility
  void StoreCustomer(String customerName) {}

  //this is another responsibility
  void generateCustomerReport(String customerName){}
}
```

Above class violates single responsibility principle. Why should this class store data in database? It is related to the 
persistence layer. The persistence layer deals with persisting is model class.So it is not the responsibility of this class.

Next method generateCustomerReport is also not the responsibility of this class. Because we may need report.

So finally the refactored code will be described as below :

```dart
class Customer {
  String? name;
}

class CustomerDB {
  void StoreCustomer(String customerName) {}
}

class CustomerReportGenerator {
  void generateCustomerReport(String customerName) {}
}
```

## Open-closed Principle :

>Entities should be open for extension, but closed for modification.

Software entities (classes, modules, functions, etc.) be extendable without actually changing the contents of the class you're extending. If we could follow this principle strongly enough, it is possible to then modify the behavior of our code without ever touching a piece of original code.

Please look at the following code :

```dart
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

```

If we want to draw the shape for Circle we have to modify drawShape method in
 ShapeDrawer class. It breaks the open-closed principle. According to this principle, 
 we can not modify we can extend. So How we can fix this problem, please see the following code :


```dart
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

```

Now we can add shapes without modifying ShapeDrawer class.


## Liskov Substitution Principle :

The Liskov Substitution principle was introduced by Barbara Liskov in her conference 
keynote "Data abstraction" in 1987.Barbara Liskov and Jeannette Wing formulated 
the principle succinctly in a 1994 paper as follows:

>Let φ(x) be a property provable about objects x of type T. Then φ(y) should be true for objects y of type S where S is a subtype of T.


The human-readable version repeats pretty much everything that Bertrand Meyer 
already has said, but it relies totally on a type-system:


>1. Preconditions cannot be strengthened in a subtype.
>2. Postconditions cannot be weakened in a subtype.
>3. Invariants of the supertype must be preserved in a subtype.

Robert Martin made the definition sound more smoothly and concisely in 1996 :

>Functions that use pointers of references to base classes must be able to use objects of derived classes without knowing it.

Or simply : Subclass/derived class should be substitutable for their base/parent class.

It states that any implementation of an abstraction (interface) should be 
substitutable in any place that the abstraction is accepted. Basically, 
it takes care that while coding using interfaces in our code, 
we not only have a contract of input that the interface receives but also the 
output returned by different Classes implementing that interface; they should be 
of the same type.

A code snippet to show how violates LSP and how we can fix it :

```dart
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

```

we can fix it as following:

```dart
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

```

## Interface Segregation Principle :

>A Client should not be forced to implement an interface that it doesn't use.

This rule means that we should break our interfaces in many smaller ones, 
so they better satisfy the exact needs of our clients.

Similar to the Single Responsibility Principle, the goal of the Interface Segregation Principle is to minimize the side consequences and repetition by dividing the software into multiple, independent parts.

Let’s see an example :

```dart
abstract class WorkerInterface {
  void work();
  void sleep();
}

class HumanWorker implements WorkerInterface {
  @override
  void work() {
    print('works');
  }

  @override
  void sleep() {
    print('sleep');
  }
}

class RobotWorker implements WorkerInterface {
  @override
  void work() {
    print('works');
  }

  @override
  void sleep() {
    // No need
  }
}

```

In the above code, RobotWorker no needs sleep, but the class has to implement the sleep method because we know that all methods are abstract in the interface. It breaks the Interface segregation law. How we can fix it please see the following code :

```dart
abstract class WorkAbleInterface {
  void work();
}

abstract class SleepAbleInterface {
  void sleep();
}

class HumanWorker implements WorkAbleInterface, SleepAbleInterface {
  @override
  void work() {
    print('works');
  }

  @override
  void sleep() {
    print('sleep');
  }
}

class RobotWorker implements WorkAbleInterface {
  @override
  void work() {
    print('works');
  }
}

```


## Dependency Inversion Principle :

> High-level modules should not depend on low-level modules. Both should depend on abstractions.

> Abstractions should not depend on details. Details should depend on abstractions.

Or simply : Depend on Abstractions not on concretions

By applying the Dependency Inversion the modules can be easily changed by other modules just 
changing the dependency module and High-level module will not be affected by any changes to 
the Low-level module.

Please look at the following code :

```dart
class MySQLConnection {
  /**
    * db connection
    */
  void connect() {
    print('MYSQL Connection');
  }
}

class PasswordReminder {
  late MySQLConnection dbConnection;

  PasswordReminder(MySQLConnection dbConnection) {
    this.dbConnection = dbConnection;
  }
}
```

There's a common misunderstanding that dependency inversion is simply another way to say dependency injection. However, the two are not the same.

In the above code In spite of Injecting MySQLConnection class in PasswordReminder class but it depends on MySQLConnection.

High-level module PasswordReminder should not depend on low-level module MySQLConnection.

If we want to change the connection from MySQLConnection to MongoDBConnection, we have to change hard-coded constructor injection in PasswordReminder class.

PasswordReminder class should depend upon on Abstractions, not on concretions. But How can we do it? Please see the following example :

```dart
abstract class ConnectionInterface {
  void connect();
}

class DbConnection implements ConnectionInterface {
  /**
    * db connection
    */
  void connect() {
    print('MYSQL Connection');
  }
}

class PasswordReminder {
  /**
    * @var DBConnection
    */
  late ConnectionInterface dbConnection;

  PasswordReminder(ConnectionInterface dbConnection) {
    this.dbConnection = dbConnection;
  }
}

```

In the above code, we want to change the connection from MySQLConnection to MongoDBConnection, we no need to change constructor injection in PasswordReminder class. Because here PasswordReminder class depends upon on Abstractions, not on concretions.

Thanks for reading.


### License

Open-sourced software licensed under the [MIT license](http://opensource.org/licenses/MIT)


