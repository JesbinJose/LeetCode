class Solution {
  bool containsDuplicate(List<int> nums) {
    Map<int,int> map = {};
    for(int n in nums) {
      if(map[n]==1)return true;
      map[n]=1;
    };
    return false;
  }
}