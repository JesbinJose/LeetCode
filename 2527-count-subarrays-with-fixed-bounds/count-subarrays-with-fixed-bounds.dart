class Solution {
  int countSubarrays(List<int> n, int minK, int maxK) {
    int count = 0;
    for (int i =0,minimum = -1, maximum = -1, start = 0;i<n.length;i++,count += max(0, min(minimum, maximum) - start + 1)) {
      if (n[i] < minK || n[i] > maxK) {
        minimum = maximum = -1;
        start = i + 1;
      }
      if (n[i] == minK) minimum = i;
      if (n[i] == maxK) maximum = i;
    }
    return count;
  }
}