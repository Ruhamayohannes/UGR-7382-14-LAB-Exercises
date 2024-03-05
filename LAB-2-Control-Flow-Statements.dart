void main() {
  // Example list for testing the function
  List<num> numbers = [10, 20, 30, 40, 50];
  
  double average = calculateAverage(numbers);
  print("The average is: $average");
}

// Function to calculate the average of a list of numbers
double calculateAverage(List<num> numbers) {

  num sum = numbers.reduce((a, b) => a + b);
  
  return sum / numbers.length;
}
