class Solution {
  int findMaxK(List<int> nums) {
    Map<int,bool> map = {};
    int res = -1;
    for(int i in nums) if(i < 0) map[i] = true;
    for(int i in nums) if(i > 0 && map[-1 * i] != null) res = max(res, i); 
    return res;
  }
}