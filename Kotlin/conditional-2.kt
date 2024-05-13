import java.util.Scanner

fun main() {
    val scanner = Scanner(System.`in`)

    println("Enter the original price of the product:")
    val originalPrice = scanner.nextDouble()

    println("Enter the discount percentage (as a decimal between 0 and 1):")
    var discountPercentage = scanner.nextDouble()

    val threshold = 0.5  
    
    if (discountPercentage > threshold) {
        println("Discount is too high; setting discount to 50%.")
        discountPercentage = threshold
    }

    val discountAmount = originalPrice * discountPercentage
    val finalPrice = originalPrice - discountAmount

    println("Original price: $$originalPrice")
    println("Discount percentage: ${discountPercentage * 100}%")
    println("Discount amount: $$discountAmount")
    println("Final price: $$finalPrice")
}
