  class  Solution {
  int climbStairs(int n) {
    int a = 1, b = 1;
    while (n-- > 0)
     a = (b += a) - a;
    return a;
  }
}

void main() {
 
  print(Solution().climbStairs(5));
}
