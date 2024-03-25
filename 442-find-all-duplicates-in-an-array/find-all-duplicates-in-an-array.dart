class Solution {
  List<int> findDuplicates(List<int> nums) {
    Map<int,bool?> map = {};
    for(int i in nums) map[i]= map[i]==false;
    nums = [];
    for(int i in map.keys) if(map[i]!)nums.add(i);
    return nums;
  }
}