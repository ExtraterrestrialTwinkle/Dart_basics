/**
 * Есть коллекция слов. Реализуйте метод, возвращающий Map. Данный Map должен
 * соотносить слово и количество его вхождений в данную коллекцию.
 */

class StringConverter{
  List<String> arr;
  StringConverter(this.arr);

  Map<String, int> mapFomCollection() {
    var set = arr.toSet();
    return Map.fromIterable(set, key:(str) => str, value: (str) => _findEntries(str));
  }

  int _findEntries(String str) {
    var counter = 0;
    arr.forEach((element) {
      if(element == str) counter++;
    });
    return counter;
  }
 }
