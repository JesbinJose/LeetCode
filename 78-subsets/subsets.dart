import 'dart:math';

class Solution {
  List<List<int>> subsets(List<int> nums) {
    List<List<int>> result = List.filled(pow(2, nums.length) as int, []);
    int index = 1;
    for (int n in nums) {
      int length = index;
      for (int i = 0; i < length; i++) result[index++] = [...result[i], n];
    }
    return result;
  }
}