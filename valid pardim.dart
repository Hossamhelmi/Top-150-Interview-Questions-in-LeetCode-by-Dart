class Solution {
  bool isAnagram(String s, String t) {
    bool exist = false;
    if (s.length == t.length) {
      exist = true;
      for (int i = 0; i < s.length; i++) {
        if (!t.contains(s[i]) || !s.contains(t[i])) {
          exist = false;
          break;
        }
      }
    }
    return exist;
  }
}

void main(List<String> args) {
  print(Solution().isAnagram("aaca", "ccac"));
}
