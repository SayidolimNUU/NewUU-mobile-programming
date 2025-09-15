String dataReader(){
  return 'some data here';
}

void main() {
  try {
    String data = dataReader();
    print(data);
  } catch (e) {
    print('An unexpected error occurred: $e');
  } finally {
    print('Database connection closed');
  }
}
