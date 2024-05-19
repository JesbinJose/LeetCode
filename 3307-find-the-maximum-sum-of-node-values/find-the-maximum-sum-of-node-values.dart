class Solution {
  int maximumValueSum(List<int> nums, int k, List<List<int>> _) {
    int d = 1073741824, cnt = 0, sum = 0;
    for (int n in nums) {
      final int b = n ^ k;
      sum += max(n, b);
      if(n < b) cnt % 2 == 0 ? cnt++ : cnt--;
      d = min(d, (n - b).abs());
    }
    return sum - d * cnt;
  }
}