class BankAccount(val accountNumber: String, var balance: Double) {

    fun deposit(amount: Double) {
        if (amount > 0) {
            balance += amount
            println("Deposited \$$amount. New balance: \$$balance.")
        } else {
            println("Invalid deposit amount: \$$amount.")
        }
    }

    fun withdraw(amount: Double) {
        if (amount > 0 && amount <= balance) {
            balance -= amount
            println("Withdrew \$$amount. New balance: \$$balance.")
        } else if (amount > balance) {
            println("Insufficient funds to withdraw \$$amount. Current balance: \$$balance.")
        } else {
            println("Invalid withdrawal amount: \$$amount.")
        }
    }

    fun printBalance() {
        println("Current balance: \$$balance.")
    }
}

fun main() {
    val myAccount = BankAccount("123456789", 1000.0)
    myAccount.printBalance()
    myAccount.deposit(200.0)
    myAccount.withdraw(150.0)
    myAccount.withdraw(1200.0)
}
