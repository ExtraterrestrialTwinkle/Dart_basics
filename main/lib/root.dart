/// Реализуйте метод, который вычисляет корень любой заданной степени из числа.
/// Реализуйте данный метод как extension-метод для num. Алгоритм можете взять
/// на википедии как «Алгоритм нахождения корня n-й степени». Запрещается использовать
/// методы math. В случае когда значение вернуть невозможно, необходимо бросать
/// исключение с описанием ошибки.
extension Roots on num {
  num root (int n, double accuracy){
    if (n == 0 || ( n % 2 == 0 && this < 0) ) {
      throw Exception("Невозможно произвести вычисление");
    } else {
      var buf = this / n;
      while ((this - buf.degree(n)).abs() >= accuracy) {
        buf = (buf * (n - 1) + this / buf.degree(n - 1)) / n;
      }
      return buf;
    }
  }

  num degree (int n) {
    num result = 1;
    for (int i = 1; i <= n; i++) {
      result *= this;
    }
    return result;
  }
}