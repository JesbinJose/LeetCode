class Solution {
  int minOperations(List<int> nums, int k) {
    int xorRes = k,res = 0;
    for (int n in nums) xorRes ^= n;
    for(;xorRes > 0; xorRes >>= 1) if (xorRes & 1 == 1) res++;
    return res;
  }
}
