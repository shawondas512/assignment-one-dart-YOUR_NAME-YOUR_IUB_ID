// Question 3: Classes & Objects
class BankAccount {
  String accountNumber;
  String accountHolder;
  double balance;
  String accountType;

  BankAccount(this.accountNumber, this.accountHolder, this.accountType)
      : balance = 0.0;

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
    }
  }

  void withdraw(double amount) {
    if (amount > balance) {
      print("Insufficient funds for withdrawal of $amount from account $accountNumber");
    } else if (amount > 0) {
      balance -= amount;
    }
  }

  double getBalance() {
    return balance;
  }

  void displayAccountInfo() {
    print("Account: $accountNumber, Holder: $accountHolder, Type: $accountType, Balance: $balance");
  }
}