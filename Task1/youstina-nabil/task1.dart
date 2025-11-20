import 'dart:io';

String rps(String p1, String p2) {
  p1 = p1.toLowerCase();
  p2 = p2.toLowerCase();
  if (p1 == p2) {
    return "Draw!";
  }

  if ((p1 == "rock" && p2 == "scissors") ||
      (p1 == "scissors" && p2 == "paper") ||
      (p1 == "paper" && p2 == "rock")) {
    return "Player 1 won!";
  } else {
    return "Player 2 won!";
  }
}

int getCount(String inputStr) {
  int count1 = 0;
  int count2 = 0;
  inputStr = inputStr.toLowerCase();
  List<String> s = inputStr.split('');
  for (int i = 0; i < s.length; i++) {
    if (s[i] == 'a' ||
        s[i] == 'e' ||
        s[i] == 'i' ||
        s[i] == 'o' ||
        s[i] == 'u') {
      count1 = count1 + 1;
    }
    if (s[i] == " ") {
      count2 = count2 + 1;
    }
  }
  print(count1);
  if (count2 == 0) {
    print("No Spaces In The String");
  } else if (count2 == 1) {
    print("$count2 space");
  } else {
    print("$count2 spaces");
  }
  return count1;
}

int duplicateCount(String text) {
  text = text.toLowerCase();
  text = text.replaceAll(" ", "");
  Map<String, int> fre = {};
  for (var i in text.split('')) {
    fre[i] = (fre[i] ?? 0) + 1;
  }

  int count = 0;
  fre.forEach((key, value) {
    if (value > 1) {
      count = count + 1;
    }
  });

  return count;
}
