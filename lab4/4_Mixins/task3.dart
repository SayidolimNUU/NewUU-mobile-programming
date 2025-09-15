mixin Logger {
  void log(String message) {
    print('[LOG] $message');
  }
}

class DataService with Logger {
  String fetching() {
    return 'Fetching data';
  }
}

void main() {
  var myDataService = DataService();
  myDataService.log(myDataService.fetching());
}
