//* Problem 1
String rps(String p1, String p2) {
  //! write your code here
if (p1 == p2){
	return "Draw!";
}
else if (p1 == "rock" && p2 == "scissors"){
	return "player 1 won!";
}

else if (p1 == "scissors" && p2 == "paper"){
	return "player 1 won!";
}
	else if (p1 == "paper" && p2 == "rock"){
	return "player 1 won!";
	}
	else {

  return "plaer 2 won! ";
  }
}

//* Problem 2
int getCount(String inputStr) {
  //! write your code here
int vow =0;
int space = 0;

for (int i = 0 ; i < inputStr.length ; i++) {

String ch= inputStr[i].toLowerCase() ;

if (ch == ' ') {

space++ ;
}
else if (ch == 'a' || ch== 'e' || ch == 'i' || ch ==

'o' || ch == 'u') {

vow++;  }
}
if (space > 0) {

print (" $space spaces");
 }
else {
print (" No Spaces In The String");
}
  return vow ;
}

//* problem 3 (optional)
int duplicateCount(String text) {
  //! write your code here

  return -1;
}