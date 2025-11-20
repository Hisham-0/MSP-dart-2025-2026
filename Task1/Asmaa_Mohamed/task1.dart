String rps(String p1, String p2) {
  //! write your code here
  if (p1 == p2) {
    return "Draw!";
  } else if ((p1 == "rock" && p2 == "scissors") ||
      (p1 == "scissors" && p2 == "paper") ||
      (p1 == "paper" && p2 == "rock")) {
    return "Player 1 won!";
  } else
    return "Player 2 won!";
}

//* Problem 2
int getCount(String inputStr) {
  //! write your code here
  int vow = 0;
  int sp = 0;
  inputStr = inputStr.toLowerCase();
  for (int i = 0; i < inputStr.length; i++) {
    if (inputStr[i] == 'a' ||
        inputStr[i] == 'e' ||
        inputStr[i] == 'i' ||
        inputStr[i] == 'o' ||
        inputStr[i] == 'u') {
      vow++;
    }
    if (inputStr[i] == ' ') {
      sp++;
    }
  }
  print(vow);
  if (sp != 0)
    print("$sp space");
  else
    print("No Spaces In The String");
  return vow;
}

//* problem 3 (optional)
int duplicateCount(String text) {
  //! write your code here
  text = text.toLowerCase();
  List<int> lol = List.filled(26, 0); // LOL
  List<int> wow = List.filled(26, 0);

  //* you may use Map (store the char and freq) and For loop to iterate (more efficiency) 🫠🫠🫠
  //* I can not understand how this logic work 🫠🫠
  //# in "indivisibility" should return  1 due to only the letter i duplicated more then one .
  //# the question is to return how many letters are  duplicated more then one .

  for (int i = 0; i < text.length; i++) {
    if (text[i].codeUnitAt(0) >= 'a'.codeUnitAt(0) &&
        text[i].codeUnitAt(0) <= 'z'.codeUnitAt(0)) {
      int Lnum = text[i].codeUnitAt(0) - 'a'.codeUnitAt(0);
      lol[Lnum]++;
    }
    if (text[i].codeUnitAt(0) >= '0'.codeUnitAt(0) &&
        text[i].codeUnitAt(0) <= '9'.codeUnitAt(0)) {
      int Nnum = text[i].codeUnitAt(0) - '0'.codeUnitAt(0);
      wow[Nnum]++;
    }
  }
  int count = 0;
  for (int i = 0; i < lol.length; i++) {
    if (lol[i] > 1) {
      count += lol[i] - 1;
    }
    if (wow[i] > 1) {
      count += wow[i] - 1;
    }
  }
  return count;
}
