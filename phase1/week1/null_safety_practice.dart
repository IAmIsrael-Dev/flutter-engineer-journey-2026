void main(){
  String name = "Israel";
  String? nickName;
  String? city;

  // print('Name length: ${name.length}');
  // print('Nickname length: ${nickName?.length}');
  // print('Display name: ${nickName ?? "Guest"}');

  // nickName = "Izzy";

  // print('Updated name: $nickName');
  // print('Nickname length: ${nickName.length}');

  print(city?.toUpperCase());
  print(city ?? 'Lagos');
}