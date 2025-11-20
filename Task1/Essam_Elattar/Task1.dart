//* Problem 1
String rps(String p1, String p2) {
  //! write your code here
  if (p1 == p2)
    return "Draw!";
  else if ((p1 == "rock" && p2 == "scissors") ||
      (p1 == "scissors" && p2 == "paper") ||
      (p1 == "paper" && p2 == "rock"))
    return "Player 1 won!";
  else
    return "Player 2 won!";
}

//* Problem 2
int getCount(String inputStr) {
  //! write your code here
  int vowels = 0;
  int spaces = 0;
  inputStr = inputStr.toLowerCase();
  //! dude whare is the vowels 🫠🫠🫠🫠🫠🫠🫠🫠
  for (int i = 0; i < inputStr.length; i++) {
    if (inputStr[i] == 'a' ||
        inputStr[i] == 'a' ||
        inputStr[i] == 'a' ||
        inputStr[i] == 'a' ||
        inputStr[i] == 'a') {
      vowels++;
    }
    //! that is a empty string Not a space .
    //# should be like this -> ' ' NOT -> ''
    if (inputStr[i] == '') {
      spaces++;
    }

    print(vowels);

    if (spaces > 1) {
      print("$spaces spaces");
    } else if (spaces == 1) {
      print("$spaces space");
    } else
      print("No Spaces In The String");
  }
  //! you should return the vowels count
  //# return vowels;
  return -1;
}

//* problem 3 (optional)
int duplicateCount(String text) {
  //! write your code here

  return -1;
}
