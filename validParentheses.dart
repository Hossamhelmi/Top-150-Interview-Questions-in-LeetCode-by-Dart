String opposite (String parenthes){
  if(parenthes == '('){
    return ')';
  }else if(parenthes == '{'){
return '}';
  }else {
    return ']';
  }
}
class Solution {
  bool isValid(String s) {
int index = -1;
List myparentess = [];
bool agreed = false;

for(int i =0;i<s.length;i++){
 if(s[i] == '('  || s[i] == '{' || s[i] == '[' ){
  
myparentess.add(s[i]);

index++;
}else  {
if(myparentess.isNotEmpty && s[i] == opposite(myparentess[index]) )
{
  myparentess.removeLast();
  index--;
}else {
  return false;
}
}
}
(myparentess.isEmpty)  ? agreed = true : agreed =false ;
return agreed;
  }
}