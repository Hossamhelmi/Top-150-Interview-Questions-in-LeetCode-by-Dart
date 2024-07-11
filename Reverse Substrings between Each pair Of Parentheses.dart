class Solution {
  String reverseParentheses(String s) {
    int openBracketIndex=0;
    int closedBracketIndex=0;
    int i=0;
    

    while(s.contains("(")){
        String pointer=s[i];
        if(pointer=="("){
            openBracketIndex=i;
        }
        if(pointer==")"){
            closedBracketIndex=i;
            String innerString=s.substring(openBracketIndex+1,closedBracketIndex);
            innerString=innerString.split("").reversed.join("");
            s=s.substring(0,openBracketIndex)+innerString+s.substring(closedBracketIndex+1);
            i=-1;
        }
        i++;
    }
    
    return s;
  }
}
void main() {
  print(Solution().reverseParentheses("(ed(et(oc))el)"));
}
