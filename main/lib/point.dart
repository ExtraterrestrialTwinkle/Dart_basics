import 'dart:math';

/**
 * Реализуйте класс Point, который описывает точку в трёхмерном пространстве.
 * У данного класса реализуйте метод distanceTo(Point another), который возвращает
 * расстояние от данной точки до точки в параметре. По желанию можете реализовать
 * метод, принимающий три точки в трёхмерном пространстве и возвращающий площадь
 * треугольника, который образуют данные точки. Реализуйте factory-конструкторы
 * для данного класса, возвращающие начало координат, и ещё несколько на своё
 * усмотрение (например, конструктор, возвращающий точку с координатами [1,1,1],
 * которая определяет единичный вектор).
 */
class Point {
  final int x, y, z;

  Point(this.x, this.y, this.z);

  factory Point.zero()
  {
    return Point(0,0,0);
  }

  factory Point.unitVector()
  {
    return Point(1,1,1);
  }

  num distanceTo(Point another) {
    return sqrt((pow(this.x - another.x, 2)) + (pow(this.y - another.y, 2)) + (pow(this.z - another.z, 2)));
  }

  static num triangleArea(Point first, Point second, Point third) {
    var ab = first.distanceTo(second);
    var bc = second.distanceTo(third);
    var ca = third.distanceTo(first);
    var p = (ab + bc + ca) / 2;
    return sqrt((p - ab) * (p - bc) * (p - ca) * p);
  }
}