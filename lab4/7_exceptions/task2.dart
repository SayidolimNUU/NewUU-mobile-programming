void listAndIndexTaker(List<int> list, int index) {
  try {
    print(list[index]);
  } on RangeError {
    print('Error: Invalid index.');
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}

void main() {
  List<int> myList = [1, 2, 3];
  listAndIndexTaker(myList, 0);
  listAndIndexTaker(myList, -1);
  listAndIndexTaker(myList, 3);
}
