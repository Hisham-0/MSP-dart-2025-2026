//* Problem 1
String rps(String p1, String p2) {
   //! write your code here
  if (p1 == p2) {
    return "Draw!";
  } else if (
      (p1 == "scissors" && p2 == "paper") 
      (p1 == "paper" && p2 == "rock")
      (p1 == "rock" && p2 == "scissors")
      ) {
    return "Player 1 won!";
  } else
    return "Player 2 won!";

  
}

//* Problem 2
int getCount(String inputStr) {
  //! write your code here
inputStr = inputStr.toLowerCase();
  int vow = 0, space = 0;
  for (int i = 0; i < inputStr.length; i++) {
    switch (inputStr[i]) {
      case "a":
      case "e":
      case "i":
      case "o":
      case "u":
        vow++;
        break;
      case " ":
        space++;
        break;
    }
  }
  if (space == 0)
    print("No Spaces In The String");
  else
    print("$space space");
  return (vow);
 
}

//* problem 3 (optional)
int duplicateCount(String text) {
  //! write your code here
 String cleaned = text.toLowerCase().replaceAll(' ', '');
  List<String> chars = cleaned.split('');
  Set<String> seen = {};
  Set<String> duplicates = {};

  for (String c in chars) {
    if (seen.contains(c)) {
      duplicates.add(c);
    } else {
      seen.add(c);
    }
  }
  return duplicates.length;
 
}
