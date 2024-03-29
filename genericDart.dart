abstract class Shape {
  double get area;
}

class Circle implements Shape {
  final double radius;
  //Constructor
  Circle(this.radius);

  @override
  double get area => 3.14 * radius * radius;
}

class Rectangle implements Shape {
  final double height;
  final double width;
  //Constructor
  Rectangle(this.height, this.width);

  @override
  double get area => height * width;
}

class Region<T extends Shape> {
  List<T> shapes;

  Region({required this.shapes});

  double get regionShape {
    double value = 0;
    shapes.forEach((shape) {
      value += shape.area;
    });
    return value;
  }
}

void main() {
  var circle = Circle(10.5);
  print("Area of the Circle: ${circle.area}");
  var rectangle = Rectangle(10.5, 12.5);
  print("Area of the Rectangle: ${rectangle.area}");

  var region = Region(shapes: [circle, rectangle]);
  print("Total Region for Cicle and Rectangle: ${region.regionShape} ");
}
