double calculateAverage(List<num> numbers) {
  if (numbers.isEmpty) {
    return 0;
  }

  double sum = 0;
  for (num number in numbers) {
    sum += number;
  }
  return sum / numbers.length;
}

void main() {
  List<num> numbers = [10, 20, 30, 40, 50];
  double average = calculateAverage(numbers);
  print('The average is: $average');
}
