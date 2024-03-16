class Solution {
  int findMaxLength(List<int> nums) {
    int res = 0, curSum =0;
    Map<int,int> map = {0:-1};
    for(int i = 0;i<nums.length;i++){
      curSum += nums[i]==0 ? -1 : 1;
      if(map[curSum]!=null) res = max(res , i-map[curSum]!);
      else map[curSum] = i;
    }
    return res;
  }
}