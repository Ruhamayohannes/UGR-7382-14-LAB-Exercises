import java.util.*

fun generateRandomPassword(length: Int): String {
    val charPool = ('a'..'z') + ('A'..'Z') + ('0'..'9') + listOf('!', '@', '#', '$', '%', '^', '&', '*')
    return (1..length)
        .map { Random().nextInt(charPool.size) }
        .map(charPool::get)
        .joinToString("")
}

fun main() {
    println("Generated password: ${generateRandomPassword(8)}")
}
