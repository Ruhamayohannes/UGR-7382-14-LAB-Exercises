fun uppercaseStrings(strings: List<String>): List<String> {
    return strings.map { it.uppercase() }
}

fun filterNumbers(numbers: List<Int>, threshold: Int): List<Int> {
    return numbers.filter { it > threshold }
}

fun sumNumbers(numbers: List<Int>): Int {
    return numbers.reduce { sum, number -> sum + number }
}

fun main() {
    val strings = listOf("hello", "world", "kotlin")
    val numbers = listOf(1, 5, 10, 15, 20)

    println("Uppercased Strings: ${uppercaseStrings(strings)}")
    println("Filtered Numbers (>10): ${filterNumbers(numbers, 10)}")
    println("Sum of Numbers: ${sumNumbers(numbers)}")
}
