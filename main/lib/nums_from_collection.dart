/// Есть коллекция строк вида ‘one, two, three, cat, dog’ или любого другого.
/// Реализуйте метод, возвращающий цифры без повторений, которые встречаются в
/// данной строке. Однако цифры встречаются в виде английских слов от zero до nine.
/// Например, в результате строки ‘one, two, zero, zero’ мы получим следующий
/// результат: [1, 2, 0]. Если в строке есть слова, не являющиеся цифрами от 0 до 9, пропускайте их.

class DegreesConvertor {
  List<String> listOfStrings;

  DegreesConvertor(this.listOfStrings);

/// Метод преобразует коллекцию строк в мапу, в которой ключом является
/// индекс строки в изначальном списке, а значением - множество цифр, втсречающихся
/// в соответствующей строке
  Map<int, Set<int>> convert() {
    return Map.fromIterable(listOfStrings, key:(e) => listOfStrings.indexOf(e), value:(e) => _convertFrom(e.split(", ")));
  }

  Set<int> _convertFrom(List<String> list){
    Set<int> degrees = new Set();
    list.forEach((element) {
      switch(element){
        case "zero":
          degrees.add(0);
          break;
        case "one":
          degrees.add(1);
          break;
        case "two":
          degrees.add(2);
          break;
        case "four":
          degrees.add(4);
          break;
        case "five":
          degrees.add(5);
          break;
        case "six":
          degrees.add(6);
          break;
        case "seven":
          degrees.add(7);
          break;
        case "eight":
          degrees.add(8);
          break;
        case "nine":
          degrees.add(9);
          break;
        default:
          break;
      }
    });
    return degrees;
  }
}