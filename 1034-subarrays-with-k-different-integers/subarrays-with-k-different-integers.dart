class Solution {
  int subarraysWithKDistinct(List<int> n, int k) {
    return fun(n , k) - fun(n , k - 1);
  }

  int fun(List<int> n, int k) {
    List<int> f = List.filled(n.length + 1 , 0);
    int j = 0 , unique = 0 , count = 0;
    for (int i = 0 ; i < n.length ; i++ , count += i - j + 1) {
      if (f[n[i]]++ == 0) unique++;
      while (j <= i && unique > k) if (--f[n[j++]] == 0) unique--;
    }
    return count;
  }
}