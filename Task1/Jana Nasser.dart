//* Problem 1
String rps(String p1, String p2) {
    if(p1==p2){
        return"Draw!";
    }
    else if((p1 == "rock" && p2 == "scissors") || (p1 == "paper" && p2 == "rock") || (p1 == "scissors" && p2 == "paper")){
        return"Player 1 won!";
    }
    else if((p1 == "rock" && p2 == "paper") || (p1 == "paper" && p2 == "scissors") || (p1 == "scissors" && p2 == "rock")) {
        return"Player 2 won!";
    }
}

//* Problem 2
int getCount(String inputStr) {
  int vowelsCount = 0;
  int spacesCount = 0;
  inputStr = inputStr.toLowerCase();
  for(int i=0 ; i<inputStr.length ; i++){
      if(inputStr[i]=="a" || inputStr[i]=="e" || inputStr[i]=="i" || inputStr[i]=="o" || inputStr[i]=="u"){
          vowelsCount++;
      }
      else if(inputStr[i]==" "){
          spacesCount++;
      }
  }
    print(vowelsCount);
    if(spacesCount > 0){
        print("$spacesCount spaces");
    } 
    else{
      print("No Spaces In The String");
    }
  return vowelsCount;
}

//* problem 3 (optional)
int duplicateCount(String text) {
  text = text.toLowerCase();
  Map<String, int> counts = {};
  for(int i=0 ; i<text.length ; i++){
    String char = text[i];
    if(char == ' '){
      continue;
    }      
    if(counts.containsKey(char)){
      counts[char] = counts[char]! + 1;
    } 
    else{
      counts[char] = 1;
    }
  }
  int duplicates = 0;
  counts.forEach((key, value) {
    if (value > 1){
      duplicates++;
    }
  });
  return duplicates;
}
