class Solution {
  List<int> dailyTemperatures(List<int> t) {
    int n = t.length;
    List<int> r = List.filled(n, 0);
    List<int> stack = [];
    for (int i = 0; i < n; i++) {
      while (stack.isNotEmpty && t[i] > t[stack.last]) {
        int index = stack.removeLast();
        r[index] = i - index;
      }
      stack.add(i);
    }
    return r;
  }
}