// Exercise 1: Function to return the highest number in the list
int findHighestNumber(List<int> numbers) {
  return numbers.reduce((current, next) => current > next ? current : next);
}

// Exercise 2: Function to print all keys and values of a Map
void printMapKeysAndValues(Map map) {
  map.forEach((key, value) {
    print('Key: $key, Value: $value');
  });
}

// Exercise 3: Function to remove duplicates from a list
List<T> removeDuplicates<T>(List<T> list) {
  return list.toSet().toList();
}

void main() {
  List<int> numbers = [10, 25, 4, 78, 54];
  print('The highest number is: ${findHighestNumber(numbers)}');

  Map<String, String> sampleMap = {'name': 'Neo', 'occupation': 'AI', 'language': 'Dart'};
  print('Map keys and values:');
  printMapKeysAndValues(sampleMap);

  List<int> numbersWithDuplicates = [1, 2, 2, 3, 4, 4, 5];
  print('List after removing duplicates: ${removeDuplicates(numbersWithDuplicates)}');
}
