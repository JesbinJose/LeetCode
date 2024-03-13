class Solution {
  int xorOperation(int n, int start) {
    List<int> nums = List.generate(n, (index) => start + 2 * index);
    int result = 0;
    for (var i = 0; i < n; i++) result ^= nums[i];
    return result;
  }
}