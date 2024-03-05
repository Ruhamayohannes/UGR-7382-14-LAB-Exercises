void functionThatThrows() {
  var randomNumber = 3; // Let's pretend we got this number from some operation
  if (randomNumber % 3 == 0) {
    throw Exception('Exception: Number is divisible by 3');
  }
}

void catchSpecificException() {
  try {
    functionThatThrows();
  } on FormatException catch (e) {
    print('Caught a FormatException: $e');
  } catch (e) {
    print('Caught an exception: $e');
  }
}

void useFinallyBlock() {
  try {
    functionThatThrows();
  } catch (e) {
    print('An error occurred: $e');
  } finally {
    print('This always runs, regardless of the outcome.');
  }
}

void main() {
  try {
    functionThatThrows();
  } catch (e) {
    print('Caught an exception: $e');
  }

  catchSpecificException();
  useFinallyBlock();
}
