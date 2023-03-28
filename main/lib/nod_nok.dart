/// Вычисление НОД и НОК
///
/// Реализуйте методы вычисления НОД и НОК целых чисел. Реализуйте метод,
/// который разбивает число на простые множители и возвращает их.
int nod(int first, int second) {
  // Натуральные числа - целые положительные, их принадлежность к целым ограничена
  // типом аргументов, для определения положительности добавила проверку:
  if (first < 0 || second < 0) {
    throw ArgumentError("Ненатуральные числа!");
  } else if (second == 0) {
    return first;
  } else if (first == second || first == 0) {
    return second;
  } else if (first > second) {
    return nod(second, first % second);
  } else {
    return nod(second, first);
  }
}

int nok(int first, int second) {
  if (first == 0 && second == 0) {
    throw Exception('Division by zero!');
  } else if (first < 0 || second < 0) {
    throw ArgumentError("Ненатуральные числа!");
  } else return first ~/ nod(first, second) * second;
}

List<int> primeFactorization(int number) {
  var arr = <int>[];
  int div = 2;
  int n = number.abs();
  while (n > 1) {
    while (n % div == 0) {
      arr.add(div);
      n ~/= div;
    }
    if (div == 2) {
      div++;
    } else {
      div += 2;
    }
  }
  return arr;
}
