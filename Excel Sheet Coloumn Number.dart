class Solution {
  int titleToNumber(String columnTitle) {
 int result = 0;
    for(int i = 0; i < columnTitle.length; i++) {
        result = (result * 26) + (columnTitle[i].codeUnitAt(0) - 64);
    }
    return result;  }
}
void  main() {
  print(Solution().titleToNumber("ZZZZ"));
}