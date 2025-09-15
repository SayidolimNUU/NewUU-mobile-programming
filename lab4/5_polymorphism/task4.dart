abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCard extends PaymentMethod {
  @override
  void pay(double amount) {
    print('Paying $amount through credit card');
  }
}

class PayPal extends PaymentMethod {
  @override
  void pay(double amount) {
    print('Paying $amount through PayPal');
  }
}

void processPayment(PaymentMethod paymentMethod, double amount) {
  paymentMethod.pay(amount);
}

void main() {
  var myCreditCard = CreditCard();
  processPayment(myCreditCard, 100);

  var myPayPal = PayPal();
  processPayment(myPayPal, 110);
}
