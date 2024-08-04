class Solution {
  int minimumOperations(List<int> nums) {
    int res = 0;
    for(int i in nums)
      if(i%3!=0) res++;
    return res;
  }
}