/// Реализуйте метод, который принимает строку слов, разделённых пробелами.
/// Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.

//Если в строке рандомно встроены цифры, находим их с помощью этого метода
List<num> digitsInString(String str){
  var array = List<String>.generate(str.length, (index) => str[index]);
  var numsArray = <num>[];
  for(int i = 0; i < array.length; i++) {
    try {
      var number = num.parse(array[i]);
      numsArray.add(number);
    } on Exception catch (e) {
      continue;
    }
  }
  return numsArray;
}

// Если в строке различные числа, в том числе и десятичные -
// отделены пробелом от слов - находим их с помощью данного метода
List<num> numsInString(String str){
  var array = str.split(' ');
  var numsArray = <num>[];
  for(int i = 0; i < array.length; i++) {
    try {
      var number = num.parse(array[i]);
      numsArray.add(number);
    } on Exception catch (e) {
      continue;
    }
  }
  return numsArray;
}