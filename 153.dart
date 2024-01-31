class Solution {
  int findMin(List<int> n) {
    int l = 0;
    int r = n.length - 1;
    int m;
    while (l < r) {
      m = ((l + r) ~/ 2);
      if (n[l] <= n[m] && n[m] <= n[r])
        return n[l];
      else if (n[l] <= n[m])
        l = m + 1;
      else if (n[m] <= n[r]) r = m;
    }
    return n[l];
  }
}
