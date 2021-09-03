void operateur(String opera, List<List<int>> value) {
  int answer = 0;
  while (value.length > 0) {}

  if (opera == "/")
    division(value1, value2);
  else if (opera == "*")
    multiplicaiton(value1, value2);
  else if (opera == "-")
    soustraction(value1, value2);
  else if (opera == "+") addition(value1, value2);
}

void division(double value1, double value2) => value1 / value2;

void multiplicaiton(double value1, double value2) => value1 * value2;

void soustraction(double value1, double value2) => value1 - value2;

void addition(double value1, double value2) => value1 - value2;

void Calcule(List<String> listNumber) {
  List<List<int>> value = [];
  List<int> listIndex = [];
  List<String> listOpera = [];

  List<String> listOperateurs = ["/", "*", "-", "+"];

  int index = 0;
  int x = 0;
  int y = 0;
  for (String i in listNumber) {
    for (String x in listOperateurs) {
      if (i == x) {
        listIndex.add(index);
        listOpera.add(x);
      }
    }
    index++;
  }
  while (x < listIndex.length) {
    while (y < listIndex[x]) {
      value[x].add(int.parse(listNumber[y]));
      y++;
    }
    x++;
  }
}
