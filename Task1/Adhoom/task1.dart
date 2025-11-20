//* Problem 1
String rps(String p1, String p2) {
  if (p1 == p2)
    return "Draw!";
  else if ((p1 == "scissors" && p2 == "paper") ||
      (p1 == "rock" && p2 == "scissors") ||
      (p1 == "paper" && p2 == "rock"))
    return "Player 1 won!";
  else
    return "Player 2 won!";
}

//* Problem 2
int getCount(String inputStr) {
  String str = inputStr.toLowerCase();
  int spaces = 0, vowels = 0;
  for (String e in str.split('')) {
    if (e == " ") spaces++;
    if (e == "a" || e == "e" || e == "i" || e == "o" || e == "u") vowels++;
  }
  if (spaces == 0)
    print("No Spaces In The String");
  else if (spaces == 1)
    print("1 space");
  else
    print("$spaces spaces");
  return vowels;
}

//* problem 3 (optional)
int duplicateCount(String text) {
  text = text.toLowerCase();
  Map<String, int> m = {};
  int n = 0;
  //! you shuold ignore the spaces
  for (String e in text.split('')) {
    if (m[e] == null) {
      m[e] = 0;
    } else {
      m[e] = m[e]! + 1;
    }
  }
  m.forEach((key, value) {
    if (value > 0) n++;
  });

  return n;
}
