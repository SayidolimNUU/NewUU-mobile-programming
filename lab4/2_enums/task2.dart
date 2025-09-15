enum OrderStatus {
  pending,
  processing,
  shipped,
  delivered,
  canceled
}

void main() {
  OrderStatus status1 = OrderStatus.pending;
  print('Status1: ${status1.name}');
  OrderStatus status2 = OrderStatus.processing;
  print('Status2: ${status2.name}');
  OrderStatus status3 = OrderStatus.shipped;
  print('Status3: ${status3.name}');
  OrderStatus status4 = OrderStatus.delivered;
  print('Status4: ${status4.name}');
  OrderStatus status5 = OrderStatus.canceled;
  print('Status5: ${status5.name}');
}
