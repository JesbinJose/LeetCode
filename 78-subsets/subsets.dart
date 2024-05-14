import 'dart:math';

class Solution {
  List<List<int>> subsets(List<int> nums) {
    List<List<int>> result = List.generate(pow(2, nums.length) as int, (_) => []);
    int index = 1;
    for (int num in nums) {
      int length = index;
      for (int i = 0; i < length; i++) result[index++] = [...result[i], num];
    }
    return result;
  }
}