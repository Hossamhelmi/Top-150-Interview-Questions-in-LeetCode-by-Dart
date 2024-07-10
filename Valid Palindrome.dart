class Solution {
  bool isPalindrome(String s) {
    s = s.replaceAll(RegExp(r'[^A-Za-z]'), '').toLowerCase();
    if (s.length == 0) return true;

    for (int i = 0; i < s.length / 2; i++) {
      if (s[i] != s[s.length - 1 - i]) {
        return false;
      }
    }
    return true;

  }
}

void main(List<String> args) {
  print(Solution().isPalindrome('A man, a plan, a canal: Panama'));
}
