class Solution {
  int maxProfit(List<int> prices) {
    if (prices.length < 2) return 0;
    int buy = -prices[0]; 
    int sell = 0; 
    int cooldown = 0;
    for (int i = 1; i < prices.length; i++) {
      int prevBuy = buy;
      buy = max(buy,cooldown - prices[i]);
      cooldown = sell;
      sell = max(sell,prevBuy + prices[i]);
    }
    return sell; 
  }
}