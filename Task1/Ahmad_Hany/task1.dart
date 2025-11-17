//* Problem 1
String rps(String p1, String p2) {
  //! write your code here
  if (p1 == "rock" && p2 == "scissors" ||
      p1 == "scissors" && p2 == "paper" ||
      p1 == "paper" && p2 == "rock") {
    return "Player 1 won!";
  } else {
    return "Player 2 won!";
  }
}

//* Problem 2
int getCount(String inputStr) {
  //! write your code here
  int vowelCounter = 0;
  int spaceCounter = 0;
  inputStr = inputStr.toLowerCase();
  for (int i = 0; i < inputStr.length; i++) {
    switch (inputStr[i]) {
      case 'a':
      case 'e':
      case 'i':
      case 'o':
      case 'u':
        vowelCounter++;
        break;
      case ' ':
        spaceCounter++;
        break;
    }
  }
  print("Number of Spaces : $spaceCounter");
  return vowelCounter;
}

//* problem 3 (optional)
int duplicateCount(String text) {
  //! write your code here
  text = text.toLowerCase().replaceAll(" ", "");
  int duplicateCounter = 0;
  List<dynamic> unique = [];
  List<dynamic> counted = [];

  for (int i = 0; i < text.length; i++) {
    if (unique.contains(text[i])) {
      if (!counted.contains(text[i])) {
        counted.add(text[i]);
        duplicateCounter++;
      }
    } else {
      unique.add(text[i]);
    }
  }

  return duplicateCounter;
}
