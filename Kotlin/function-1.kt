fun analyzeText(input: String): Triple<Int, Int, Int> {
    val words = input.split("\\s+".toRegex()).size  
    val uppercaseCount = input.count { it.isUpperCase() }  
    val vowelsCount = input.count { it in "aeiouAEIOU" }  

    return Triple(words, uppercaseCount, vowelsCount)
}

fun main() {
    println("Enter a string to analyze:")
    val input = readLine() ?: ""  
    val (words, uppercaseLetters, vowels) = analyzeText(input)

    println("Number of words: $words")
    println("Number of uppercase letters: $uppercaseLetters")
    println("Number of vowels: $vowels")
}
