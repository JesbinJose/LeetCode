class Solution {
  List<int> twoSum(List<int> nums, int target) {
    int right = 0;
    int left = nums.length-1;
    List<int> temp = [...nums];
    nums.sort();
    while(right<left){
      if(nums[right] + nums[left] == target) return [temp.indexOf(nums[right]),temp.lastIndexOf(nums[left])];
      nums[right] + nums[left] > target ? left-- : right++;
    }
    return [0,0];
  }
}