import 'dart:io';

// #########################################################
//! you shouldn't make a main fun
// #########################################################
void main() {
  //*Problem 1
  /*"scissors", "paper" --> "Player 1 won!"
"scissors", "rock" --> "Player 2 won!"
"paper", "paper" --> "Draw!"*/

  String rps(String p1, String p2) {
    if (p1 == p2) {
      return 'Draw!';
    }

    if ((p1 == 'scissors' && p2 == 'paper') ||
        (p1 == 'rock' && p2 == 'scissors') ||
        (p1 == 'paper' && p2 == 'rock')) {
      return 'Player 1 won!';
    } else {
      return 'Player 2 won!';
    }

    return " ";
  }

  //* Problem 2
  /*"abcdEf" -> 2
  "No Spaces In The String"
  "Computer science " -> 6
  2 spaces
  "Moon Light" -> 3
  1 space */

  int getCount(String inputStr) {
    //! you should handle the case sensitive
    int spacenumber = 0;
    int numofvowels = 0;
    for (int i = 0; i < inputStr.length; i++) {
      if (inputStr[i] == ' ') {
        spacenumber++;
      }
      if (inputStr[i] == 'a' ||
          inputStr[i] == 'e' ||
          inputStr[i] == 'i' ||
          inputStr[i] == 'o' ||
          inputStr[i] == 'u') {
        numofvowels++;
      }
    }
    if (spacenumber == 0) {
      print('no space');
    } else {
      print('there is $spacenumber space');
    }

    return numofvowels;
  }

  print('player 1 enter your choice : (rock , paper ,scissors )');
  String player1ans = stdin.readLineSync()!.toLowerCase();
  print('player 2 enter your choice : (rock , paper ,scissors )');
  String player2ans = stdin.readLineSync()!.toLowerCase();

  String game = rps(player1ans, player2ans);
  print(game);

  print('please enter your sentence ');
  String sentence = stdin.readLineSync()!.toLowerCase();
  int vowelspacecount = getCount(sentence);
  print('number of vowels --> $vowelspacecount');
}
