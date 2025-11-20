//* Problem 1
String rps(String p1, String p2) {
  if (p1 == p2) {
    return "Draw!";
  }
  //* take care about case sensitivity "Rock" != "rock"
  else if ((p1 == "Rock" && p2 == "Scissors") ||
      (p1 == "Scissors" && p2 == "Paper") ||
      (p1 == "Paper" && p2 == "Rock")) {
    return "Player 1 won!";
  } else {
    return "Player 2 won!";
  }
}

//* Problem 2
int getCount(String inputStr) {
  int vowel = 0;
  int space = 0;
  inputStr.toLowerCase(); //! should be inputStr = inputStr.toLowerCase(); 🙂🙂
  for (int i = 0; i < inputStr.length; i++) {
    if (inputStr[i] == "a" ||
        inputStr[i] == "e" ||
        inputStr[i] == "i" ||
        inputStr[i] == "o" ||
        inputStr[i] == "u") {
      vowel++;
    }
    if (inputStr[i] == " ") {
      space++;
    }
    //! these conditions in the For loop (for every iteration will check the conditions )
    if (space == 0) {
      print("No Spaces In The String");
    } else if (space == 1) {
      print("$space space");
    } else {
      print("$space spaces");
    }
  }

  return vowel;
}

//* problem 3 (optional)
int duplicateCount(String text) {
  int count;
  text = text.replaceAll(" ", "");
  text = text.toLowerCase();
  Map<String, int> Duplicate = {};
  for (int i = 0; i < text.length; i++) {
    count = 0;
    for (int j = 0; j < text.length; j++) {
      if (text[i] == text[j]) {
        count++;
      }
    }
    Duplicate[text[i]] = count;
  }
  int number = 0;
  Duplicate.forEach((key, value) {
    if (value > 1) {
      number++;
    }
  });
  return number;
}
