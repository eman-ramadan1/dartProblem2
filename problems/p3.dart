
class CardPayment {
  double amount;
  String cardNumber;

  CardPayment(this.amount, this.cardNumber);
}

class CashPayment {
  double amount;

  CashPayment(this.amount);
}

String processPayment(dynamic payment, String currency) {
  double finalAmount;

  if (payment is CardPayment || payment is CashPayment) {
    finalAmount = currency == "USD"
        ? payment.amount
        : currency == "EGP"
            ? payment.amount * 30
            : payment.amount;
  } else {
    finalAmount = 0;
  }

  return payment is CardPayment
      ? "Card payment of $finalAmount $currency using ${payment.cardNumber}"
      : payment is CashPayment
          ? "Cash payment of $finalAmount $currency"
          : "Unknown payment method";
}
void main() {
  print(processPayment(CardPayment(100, "1234-5678-9876-5432"), "EGP")); 
  print(processPayment(CashPayment(50), "USD")); 
  print(processPayment("PayPal", "USD")); 
}
