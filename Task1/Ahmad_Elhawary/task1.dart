//* Problem 1
String rps(String p1, String p2) {
  if (p1 == "scissors" && p2 == "paper" ||
      p1 == "rock" && p2 == "scissors" ||
      p1 == "paper" && p2 == "rock")
    //! should be 'Player 1 won!'
    return "player one won!";
  else if (p1 == p2)
    //! should be 'Draw!' (the space)
    return "DRAW !";
  else
    //! should be 'Player 2 won!'
    return "Player two won !";
}

//* Problem 2
int getCount(String inputStr) {
  int vowels_count = 0;
  int num_of_spaces = 0;
  inputStr = inputStr.toLowerCase();
  for (int i = 0; i < inputStr.length; i++) {
    switch (inputStr[i]) {
      case 'a':
      case 'e':
      case 'i':
      case 'o':
      case 'u':
        vowels_count++;
        break;
      case ' ':
        num_of_spaces++;
        break;
    }
  }
  //! you should print "No Spaces In The String" or 2 spaces
  print("Number of Spaces : $num_of_spaces");
  return vowels_count;
}
