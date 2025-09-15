abstract class DataFormatter {
  String format(Map<String, dynamic> data);
}

class JSONFormatter extends DataFormatter {
  @override
  String format(Map<String, dynamic> data) {
    print('JSONFormatting ...');
    return data.toString();
  }
}

class KeyValueFormatter extends DataFormatter {
  @override
  String format(Map<String, dynamic> data) {
    print('KeyValueFormatting ...');
    String strData = data.toString();
    String result = '';
    for (int i = 0; i < strData.length; i++) {
      if (strData[i] == ',') {
        result += '\n';
        i++;
      }
      else if (strData[i] != '{' && strData[i] != '}') {
        result += strData[i];
      }
    }
    return result;
  }
}

void main() {
  Map<String, dynamic> myData = {
    'username' : 'lololo',
    'password' : 'lololo111',
    'age' : 99
  };

  var myJSON = JSONFormatter();
  print(myJSON.format(myData));

  var myKeyValue = KeyValueFormatter();
  print(myKeyValue.format(myData));
}
