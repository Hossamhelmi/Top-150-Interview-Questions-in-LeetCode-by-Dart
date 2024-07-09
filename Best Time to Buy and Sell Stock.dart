import 'dart:math';

class Solution {
  int maxProfit(List<int> prices) {
      int profit = 0;
      int minPrice = prices.first;
      for (int i = 1; i < prices.length; i++) {
          minPrice = min(minPrice, prices[i]);
          profit = max(profit, prices[i]-minPrice);
      }
      return profit;
  }
}

void main() {
    print(Solution().maxProfit([7,1,5,3,6,4]));
}
