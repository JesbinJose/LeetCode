class Solution {
  int findDuplicate(List<int> nums) {
    int t = nums[0],h=nums[0];
    do {
      t = nums[t];
      h = nums[nums[h]];
    } while (t != h);
    for (t = nums[0];t != h;t = nums[t],h = nums[h]);
    return h;
  }
}