class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int,int> map = {};
    for(var (index,value) in nums.indexed){
      if(map[value] != null) return [map[value]!,index];
      int left = target - value;
      map[left] = index;
    }
    return [];
  }
}