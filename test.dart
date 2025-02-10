import 'dart:math';

main(){
  print("Hello saly");
  var  data = [1, "sdsd", true];
  var image = {
    'tags' : ['tags'],
    'url' : 'dsjds/kiuiu/'
  };
  print(data);
  print(image);
  var year =  0;
  
  while(year <= 10){
      print(year);
      year = year + 1;
  }
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  flybyObjects.where((name)=>name.contains('Saturn')).forEach(print);
}
