//* Problem 1
String rps(String p1, String p2) {

  int sub = p1.length - p2.length;


  if(sub == 0){
    return "Draw!";

  }else if(sub.abs() == 4){
    if(sub < 0){
      return "Player 1 won!";
    }else{
      return "Player 2 won!";
    }
  }else {
    if(sub > 0){
      return "Player 1 won!";
    }else{
      return "Player 2 won!";
    }  
  }
}

//* Problem 2
int getCount(String inputStr) {
  
  int vowels = 0;
  int spaces = 0;

  inputStr = inputStr.toLowerCase();

  for(String a in inputStr.split('')){
    if(a == ' '){
      spaces++;
    }else if (a == 'a' || a =='e' || a =='i' || a=='o' || a=='u'){
      vowels++;
    }
  }

  if(spaces == 0){
    print("No Spaces In The String");
  }else{
    print("$spaces Spaces");
  }

  return vowels;
}

//* problem 3 (optional)
int duplicateCount(String text) {

  Map <String , int> dublicated = {};

  text = text.toLowerCase();
  text = text.replaceAll(" ", "");
  int result=0;

  for(String a in text.split('')){
    if(dublicated[a] == null){
      dublicated[a] = 0;
    }else{
      dublicated[a] = dublicated[a]! + 1;
    }
  }

  dublicated.removeWhere((key, value) => value == 0);

  result = dublicated.length;

  print("\"$text\"  => $result");

  return result;
}
