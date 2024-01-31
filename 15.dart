class Solution {
  List<List<int>> threeSum(List<int> nums) {
    nums.sort();
    List<List<int>> result = [];
    int z = nums.length - 2;
    for (int i = 0; i < z; i++) {
      if (i == 0 || nums[i] != nums[i - 1]) {
        int left = i + 1;
        int right = nums.length - 1;
        int target = -nums[i]; 
        while (left < right) {
          if (nums[left] + nums[right] == target) {
            result.add([nums[i], nums[left], nums[right]]);
            while (left < right && nums[left] == nums[left + 1]) left++;
            while (left < right && nums[right] == nums[right - 1]) right--;
            left++;
            right--;
          } else nums[left] + nums[right] < target? left++:right--;
        }
      }
    }
    return result;
  }
}

