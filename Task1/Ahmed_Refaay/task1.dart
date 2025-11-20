//* Problem 1
String rps(String p1, String p2) {
  //! write your code here
  Map<String, String> Wins = {
    "rock": "scissors",
    "scissors": "paper",
    "paper": "rock",
  };
  if (p1 == p2)
    return "Draw!";
  else if (Wins[p1] == p2)
    return "Player 1 won!";
  else
    return "Player 2 won!";
}

//* Problem 2
int getCount(String inputStr) {
  //! write your code here
  int Vowel_Counter = 0, Space_Counter = 0;
  inputStr = inputStr.toLowerCase();
  for (int i = 0; i < inputStr.length; i++) {
    switch (inputStr[i]) {
      case 'a':
      case 'e':
      case 'i':
      case 'o':
      case 'u':
        Vowel_Counter++;
        break;
      case ' ':
        Space_Counter++;
        break;
    }
  }

  if (Space_Counter == 0) {
    print("No Spaces In The String");
  } else if (Space_Counter == 1) {
    print("1 space");
  } else {
    print("$Space_Counter spaces");
  }

  return Vowel_Counter;
}

//* problem 3 (optional)
int duplicateCount(String text) {
  //! write your code here

  //* you may use Map (store the char and freq) and For loop to iterate on it  (more efficiency)
  text = text.toLowerCase();
  List<String> Duplicated_char = [];

  for (int i = 0; i < text.length; i++) {
    if (text[i] == ' ') {
      continue;
    }
    if (Duplicated_char.contains(text[i])) {
      continue;
    }
    for (int j = i + 1; j < text.length; j++) {
      if (text[i] == text[j]) {
        Duplicated_char.add(text[i]);
        break;
      }
    }
  }

  return Duplicated_char.length;
}
