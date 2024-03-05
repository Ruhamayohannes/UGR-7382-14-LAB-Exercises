void main() {
  // Exercise 1 demonstration
  List<int> numbers = [1, 5, 3, 9, 2, 9, 10];
  print("The highest number is: ${findHighestNumber(numbers)}");

  // Exercise 2 demonstration
  Map<String, String> map = {'name': 'Neo', 'language': 'Dart', 'framework': 'Flutter'};
  printMapKeysAndValues(map);


  // Exercise 3 demonstration
  List<int> numbersWithDuplicates = [1, 2, 3, 3, 2, 4, 5, 5, 6];
  print("List after removing duplicates: ${removeDuplicates(numbersWithDuplicates)}");
}

int findHighestNumber(List<int> numbers) {
  return numbers.reduce((current, next) => current > next ? current : next);
}

void printMapKeysAndValues(Map<dynamic, dynamic> map) {
  map.forEach((key, value) {
    print('Key: $key, Value: $value');
  });
}

List<dynamic> removeDuplicates(List<dynamic> list) {
  return list.toSet().toList();
}
