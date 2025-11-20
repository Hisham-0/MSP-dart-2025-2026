//* Problem 1
String rps(String p1, String p2) {
  //! write your code here
  if (p1 == p2) return "Draw!";
  if ((p1 == "rock" && p2 == "scissors") ||
      (p1 == "scissors" && p2 == "paper") ||
      (p1 == "paper" && p2 == "rock"))
    return "Player 1 won!";
  else
    return "Player 2 won!";
}

//* Problem 2
int getCount(String inputStr) {
  //! write your code here
  int count_vawel = 0;
  int count_space = 0;

  //* you can use Set to store the vowels
  //* and use  inputStr = inputStr.toLowerCase(); so you can compare easly 🙂🙂
  String vaw = "aeiouAEIOU";
  for (int i = 0; i < inputStr.length; i++) {
    for (int j = 0; j < vaw.length; j++)
      if (inputStr[i] == vaw[j]) count_vawel++;
    if (inputStr[i] == " ") count_space++;
  }

  if (count_space == 0)
    print("No Spaces In The String");
  else
    print("$count_space spaces");

  return count_vawel;
}

//* problem 3 (optional)
int duplicateCount(String text) {
  //! write your code here

  //* you may use Map (store the char and freq) and For loop to iterate on it  (more efficiency)
  List<int> freq = List.filled(36, 0);
  int index = 0;
  int duplicateCount = 0;
  text = text.toLowerCase();
  for (int i = 0; i < text.length; i++) {
    if (text[i] == ' ') continue;
    if (text[i].codeUnitAt(0) >= 'a'.codeUnitAt(0) &&
        text[i].codeUnitAt(0) <= 'z'.codeUnitAt(0)) {
      index = text[i].codeUnitAt(0) - 'a'.codeUnitAt(0);
    } else if (text[i].codeUnitAt(0) >= '0'.codeUnitAt(0) &&
        text[i].codeUnitAt(0) <= '9'.codeUnitAt(0)) {
      index = 26 + (text[i].codeUnitAt(0) - '0'.codeUnitAt(0));
    } else {
      continue;
    }
    freq[index]++;
  }
  for (int i = 0; i < freq.length; i++) {
    if (freq[i] > 1) duplicateCount++;
  }
  return duplicateCount;
}
