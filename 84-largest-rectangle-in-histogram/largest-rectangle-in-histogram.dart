class Solution {
  int largestRectangleArea(List<int> h) {
    int m = 0,i = 0;
    for (List<int> s = []; i <= h.length;s.add(i++)) {
      while (s.isNotEmpty && (i == h.length || h[i] < h[s.last])) {
        m = max(m, h[s.removeLast()] *( s.isEmpty ? i : i - s.last - 1));
      }
    }
    return m;
  }
}