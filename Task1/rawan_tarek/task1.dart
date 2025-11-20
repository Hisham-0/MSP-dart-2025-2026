//* Problem 1
String rps(String p1, String p2) {
  String result = "Draw!";
  if ((p1 == "scissors" && p2 == "paper") ||
      (p1 == "rock" && p2 == "scissors") ||
      (p1 == "paper" && p2 == "rock")) {
    result = "Player 1 won!";
  } else if ((p2 == "scissors" && p1 == "paper") ||
      (p2 == "rock" && p1 == "scissors") ||
      (p2 == "paper" && p1 == "rock")) {
    result = "Player 2 won!";
  }
  return result;
}

//* Problem 2
int getCount(String inputStr) {
  int vowel = 0, space = 0;
  inputStr.toLowerCase(); //! it should be inputStr = inputStr.toLowerCase();🙂
  for (int i = 0; i < inputStr.length; i++) {
    switch (inputStr[i]) {
      case "a":
      case "e":
      case "u":
      case "i":
      case "o":
        vowel++;
        break;
      case " ":
        space++;
        break;
    }
  }
  if (space == 0) {
    print("No Spaces In The String");
  } else if (space == 1) {
    print(" $space space ");
  } else {
    print(" $space spaces ");
  }
  return vowel;
}

//* problem 3 (optional)
int duplicateCount(String text) {
  int count;
  text = text.toLowerCase();
  text = text.replaceAll(" ", "");
  Map<String, int> duplicate = {};
  for (int i = 0; i < text.length; i++) {
    count = 0;
    for (int j = 0; j < text.length; j++) {
      if (text[i] == text[j]) {
        count++;
      }
    }
    duplicate[text[i]] = count;
  }

  int result = 0;
  duplicate.forEach((key, value) {
    if (value > 1) {
      result++;
    }
  });

  return result;
}
