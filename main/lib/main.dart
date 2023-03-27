import 'dart:math';

import 'map.dart';
import 'nod_nok.dart';
import 'decimal_to_binary.dart';
import 'nums_from_collection.dart';
import 'nums_in_string.dart';
import 'point.dart';
import 'rimans_integral.dart';
import 'root.dart';
import 'user.dart';

void main() {
  // print(nod(0, 30));
  // print(nok(12, 456));
  // print(toBinary(1251));
  // print(toDecimal("001011000111"));
  // print(digitsInString("aefaje67 gjg, sjfs88, ldld 65,7"));
  // print(numsInString("str 65.7 ghgjfk 78 kk 000001 fkgfkjgjj 123 0xc 0x0c"));
  // print(Point(1,1,0).distanceTo(Point(2,2,0)));
  // print(Point.triangleArea(Point(1,1,6), Point(0,0,0), Point(2,0,0)));
  // print(12.degree(5));
  // print(248832.root(5, 0.0001));
  // print((-12).root(2, 0.0001));

  // var admin1 = new AdminUser("asd@mail.ru");
  // var admin2 = new AdminUser("asdf@mail.ru");
  // var admin3 = new AdminUser("asdg@mail.ru");
  // var admin4 = new AdminUser("asdh@mail.ru");
  // var admin5 = new AdminUser("asdj@mail.ru");
  // var admin6 = new AdminUser("asdk@mail.ru");
  // var general1 = new GeneralUser("asdl@mail.ru");
  // var general2 = new GeneralUser("asdz@mail.ru");
  // var general3 = new GeneralUser("asdx@mail.ru");
  // var general4 = new GeneralUser("asdc@mail.ru");
  // var general5 = new GeneralUser("asdv@mail.ru");
  // UserManager userManager = new UserManager();
  // userManager.addUsers([admin1, admin2, admin3, admin4, admin5, admin6, general1, general2, general3, general4, general5]);
  // print(userManager.getEmails());
  // userManager.removeUser(admin5);
  // userManager.addUser(new GeneralUser("email@fg.ru"));
  // print(userManager.getEmails());

  // var listOfStrings = <String>['one, two, cat', 'four, carpet, four, seven', 'value, six, from, two, six, zero'];
  // DegreesConvertor convertor = new DegreesConvertor(listOfStrings);
  // print(convertor.convert());

  // var list = <String>['aaa', 'ccc', 'ccc', 'ggg', 'mmm', 'kkk', 'aaa', 'sss', 'aaa'];
  // StringConverter converter = new StringConverter(list);
  // print(converter.mapFomCollection());

  print(IntegralCalculator.calculate(14, 12, 0.000001, (x) => pow(x, 2) + x + 1));
}
