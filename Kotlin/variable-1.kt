import java.util.Scanner

fun main() {
    val scanner = Scanner(System.`in`)
    
    println("Enter the first number:")
    val num1 = scanner.nextInt()  
    
    println("Enter the second number:")
    val num2 = scanner.nextInt()  
    
    println("Enter operation (add, subtract, multiply, divide):")
    val operation = scanner.next() 

    val result = when (operation) {
        "add" -> num1 + num2
        "subtract" -> num1 - num2
        "multiply" -> num1 * num2
        "divide" -> if (num2 != 0) num1 / num2 else "Cannot divide by zero"
        else -> "Invalid operation"
    }

    println("The result of $operation is $result")
}
