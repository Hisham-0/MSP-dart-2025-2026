//* Problem 1
String rps(String p1, String p2) {
  if (p1 == p2) {
    return ("Draw!");
  } else if (p1 == "rock" && p2 == "scissors" ||
      p1 == "scissors" && p2 == "paper" ||
      p1 == "paper" && p2 == "rock") {
    return ("Player 1 won!");
  } else {
    return ("Player 2 won!");
  }
}

//* Problem 2
int getCount(String inputStr) {
  int noOfvouls = 0;
  int noOfspaces = 0;
  for (var element in inputStr.toLowerCase().split('')) {
    if (element == 'a' ||
        element == 'e' ||
        element == 'i' ||
        element == 'o' ||
        element == 'u') {
      noOfvouls += 1;
    }
    if (element == ' ') {
      noOfspaces += 1;
    }
  }

  if (noOfspaces == 0) {
    print('${noOfvouls}');
    print("No Spaces In The String");
    return noOfvouls;
  } else if (noOfspaces == 1) {
    print('${noOfvouls}');
    print("1 space");
    return noOfvouls;
  } else {
    print('${noOfvouls}');
    print('${noOfspaces} spaces');
    return noOfvouls;
  }
}

//* problem 3 (optional)
int duplicateCount(String text) {
  text = text.replaceAll(' ', '').toLowerCase();
  Map<String, int> counting = {};
  for (int i = 0; i < text.length; i++) {
    String char = text[i];
    counting.update(char, (v) => v + 1, ifAbsent: () => 1);
  }
  int duplicate = 0;
  counting.values.forEach((element) {
    if (element > 1) duplicate++;
  });
  return duplicate;
}
