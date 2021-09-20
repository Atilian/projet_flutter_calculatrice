bool verification(List<String> listButtonInput, String buttonInput) {
  if (listButtonInput.length > 0) {
    if (buttonInput == "R") {
      listButtonInput.clear();
      return false;
    }

    int verif = 0;
    List<String> listOperateur = ["+", "-", "/", "*", "^"];

    for (String operateur in listOperateur) {
      if (listButtonInput.last == operateur) {
        verif++;
      }
      if (buttonInput == operateur) {
        verif++;
      }
    }
    if (verif >= 2) {
      return false;
    }
  }
  return true;
}

List<String> displayToAnswer(List<String> listButtonInput) {
  final List<int> listValue = [];
  int temp = 0;
  final List<String> listOperation = [];
  final List<int> listCoteValue = [];
  final List<String> opera = [];

  final List<String> listNumber = [
    "0",
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9"
  ];
  final List<String> listOperateur = ["+", "-", "/", "*", "^"];
  int i = 0;

  while (listButtonInput.contains("(")) {
    int rangeCote1 = listButtonInput.join().indexOf("(");
    int rangeCote2 = listButtonInput.join().indexOf(")");

    while (rangeCote1 < rangeCote2 - 1) {
      if (listButtonInput[rangeCote1 + 1] == "+" ||
          listButtonInput[rangeCote1 + 1] == "-" ||
          listButtonInput[rangeCote1 + 1] == "/" ||
          listButtonInput[rangeCote1 + 1] == "*" ||
          listButtonInput[rangeCote1 + 1] == "^") {
        opera.add(listButtonInput[rangeCote1 + 1]);
      } else {
        listCoteValue.add(int.parse(listButtonInput[rangeCote1 + 1]));
      }
      rangeCote1++;
    }
    rangeCote1 = listButtonInput.join().indexOf("(");
    listButtonInput.replaceRange(
        rangeCote1, rangeCote2 + 1, [operation(opera, listCoteValue)]);
  }

  //print(listButtonInput.where((element) => element.indexOf(pattern)));

  //print(listButtonInput.join().indexOf("("));
  //(listButtonInput.join().indexOf(")"));

  // while (listButtonInput[i] != ")") {
  //   if (listButtonInput[i] == "(") {
  //     while (listButtonInput[i] != ")") {
  //       print(listButtonInput[i]);
  //       rangeCote1 = i;
  //       i++;
  //       if (listButtonInput[i] == "+" ||
  //           listButtonInput[i] == "-" ||
  //           listButtonInput[i] == "/" ||
  //           listButtonInput[i] == "*" ||
  //           listButtonInput[i] == "^") {
  //         opera.add(listButtonInput[i]);
  //         listCoteValue.add(temp);
  //         temp = 0;
  //       } else {
  //         temp = temp * 10 + int.parse(listButtonInput[i]);
  //       }
  //       i++;

  //       listCoteValue.add(temp);
  //       rangeCote2 = i;
  //       // print(listButtonInput);
  //       // print(rangeCote1);
  //       // print(rangeCote2);

  //       // print(listButtonInput);
  //     }
  //     break;
  //   }
  // }
  // listButtonInput.replaceRange(
  //     rangeCote1, rangeCote2 + 1, [operation(opera, listCoteValue)]);
  print(listButtonInput);
  for (String index in listButtonInput) {
    for (String operateur in listOperateur) {
      if (index == operateur) {
        listOperation.add(index);
        listValue.add(temp);
        temp = 0;
        break;
      } else {
        temp = temp * 10 + int.parse(index);
        break;
      }
    }
    i++;
  }
  listValue.add(temp);
  print(listOperation);
  print(listValue);
  final String answer = operation(listOperation, listValue);

  return answer.split("");
}

String operation(List<String> listOperation, List<int> listNumber) {
  for (String operateur in listOperation) {
    if (operateur == "+") {
      listNumber[0] = adition(listNumber[0], listNumber[1]);
    } else if (operateur == "-") {
      listNumber[0] = soustraction(listNumber[0], listNumber[1]);
    } else if (operateur == "/") {
      listNumber[0] = division(listNumber[0], listNumber[1]);
    } else if (operateur == "*") {
      listNumber[0] = multiplication(listNumber[0], listNumber[1]);
    }
    listNumber.removeAt(1);
  }
  return listNumber[0].toString();
}

int adition(int value1, int value2) {
  return value1 + value2;
}

int soustraction(int value1, int value2) {
  return value1 - value2;
}

int division(int value1, int value2) {
  return value1 ~/ value2;
}

int multiplication(int value1, int value2) {
  return value1 * value2;
}
