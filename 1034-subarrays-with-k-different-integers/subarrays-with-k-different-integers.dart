class Solution {
  int subarraysWithKDistinct(List<int> n, int k) {
    int countDistinct(int k) {
      List<int> f = List<int>.filled(n.length + 1, 0);
      int j = 0, unique = 0, count = 0;
      for (int i = 0; i < n.length; i++, count += i - j + 1) {
        if (f[n[i]]++ == 0) unique++;
        while (unique > k) if (--f[n[j++]] == 0) unique--;
      }
      return count;
    }
    return countDistinct(k) - countDistinct(k - 1);
  }
}
