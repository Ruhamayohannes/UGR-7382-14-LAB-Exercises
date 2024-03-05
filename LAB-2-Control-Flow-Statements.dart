void printDayOfWeek(int day) {
  switch (day) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('Saturday');
      break;
    case 7:
      print('Sunday');
      break;
    default:
      print('Invalid day');
  }
}

void printFibonacciSequence(int n) {
  int first = 0, second = 1, next;

  for (int i = 0; i < n; i++) {
    if (i <= 1) {
      next = i;
    } else {
      next = first + second;
      first = second;
      second = next;
    }
    print(next);
  }
}

void main() {
  printDayOfWeek(3); 
  printFibonacciSequence(10); 
}
