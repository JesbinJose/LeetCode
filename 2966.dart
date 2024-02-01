class Solution {
  List<List<int>> divideArray(List<int> nums, int k) {
    nums.sort();
    List<List<int>> result = [[]];
    for (int n in nums) {
      result[0].add(n);
      if (result[0].length == 3) {
        if (result[0].last - result[0].first > k) return [];
        result.add(result[0]);
        result[0] = [];
      }
    }
    return result.sublist(1);
  }
}