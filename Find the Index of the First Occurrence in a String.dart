class Solution {
  int strStr(String haystack, String needle) {
    if (haystack.contains(needle)) {
      return haystack.indexOf(needle);
    }
    return -1;
  }
}

void main(List<String> args) {
  String haystack = "sadbutsad";
  String needle = "sad";

  Solution obj = new Solution();

  print(obj.strStr(haystack, needle));
}
