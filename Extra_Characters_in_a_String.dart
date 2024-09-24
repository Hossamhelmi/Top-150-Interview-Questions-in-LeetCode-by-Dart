class Solution {

  int minExtraChar(String s, List<String> dictionary) {
    int extraCharacters = 0;

    for (String word in dictionary) {
      int index = s.indexOf(word);
      while (index != -1) {
        extraCharacters += word.length;
        index = s.indexOf(word, index + 1);
      }
    }

    return s.length - extraCharacters;
  }

}

void main() {

  print(Solution().minExtraChar("skyscraper", ["sky", "build", "scraper"]));
}
