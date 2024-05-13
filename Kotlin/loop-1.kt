fun main() {
    println("Enter a string:")
    val input = readLine() ?: return  // Read input from user or exit if null

    if (input.isEmpty()) {
        println("The string is empty.")
        return
    }

    var minChar = input[0]
    var maxChar = input[0]

    for (char in input) {
        if (char < minChar) minChar = char
        if (char > maxChar) maxChar = char
    }

    println("Minimum ASCII character: $minChar")
    println("Maximum ASCII character: $maxChar")
}
