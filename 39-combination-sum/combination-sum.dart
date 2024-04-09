class Solution {
  List<List<int>> combinationSum(List<int> c, int target) {
    final List<List<int>> res = [];
    void rec(int target, int startIndex, List<int> current) {
      if (target == 0) res.add(current);
      if (target <= 0 || startIndex >= c.length) return;
      for (int i = startIndex; i < c.length; i++) {
        rec(target - c[i], i, [...current,c[i]]);
      }
    }
    rec(target, 0, []);
    return res;
  }

}