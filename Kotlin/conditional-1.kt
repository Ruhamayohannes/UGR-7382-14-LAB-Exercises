import java.util.Scanner

fun main() {
    val scanner = Scanner(System.`in`)
    println("Enter your numeric grade (0-100):")
    val numericGrade = scanner.nextInt()

    val letterGrade = when {
        numericGrade in 90..100 -> "A"
        numericGrade in 80..89 -> "B"
        numericGrade in 70..79 -> "C"
        numericGrade in 60..69 -> "D"
        numericGrade < 60 -> "F"
        else -> "Invalid grade"
    }

    println("Your letter grade is: $letterGrade")
}
