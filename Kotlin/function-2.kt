fun findMax(numbers: List<Int>): Int? {
    return numbers.maxOrNull()  
}

fun filterEvenNumbers(numbers: List<Int>): List<Int> {
    return numbers.filter { it % 2 == 0 }  
}

fun calculateAverage(numbers: List<Double>): Double {
    if (numbers.isEmpty()) return 0.0  
    return numbers.average()  
}

fun main() {
    val intList = listOf(1, 2, 3, 4, 5, 6)
    val doubleList = listOf(1.5, 2.5, 3.5, 4.5, 5.5)

    println("Maximum value: ${findMax(intList)}")
    println("Even numbers: ${filterEvenNumbers(intList)}")
    println("Average value: ${calculateAverage(doubleList)}")
}
