void main() {
  // Exercise 1 demonstration
  print("Exercise 1: Print Day of the Week");
  printDayOfWeek(3); // Should print "Wednesday"
  

  // Exercise 2 demonstration
  print("Exercise 2: Print First 10 Numbers in Fibonacci Sequence");
  printFibonacci(10); // Prints the first 10 Fibonacci numbers
}

void printDayOfWeek(int day) {
  switch(day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid input. Please enter a number from 1 to 7.");
  }
}

void printFibonacci(int n) {
  int a = 0, b = 1;
  print(a);
  print(b);

  for (int i = 2; i < n; i++) {
    int next = a + b;
    print(next);
    a = b;
    b = next;
  }
}
