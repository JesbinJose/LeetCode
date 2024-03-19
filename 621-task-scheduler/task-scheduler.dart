class Solution {
  int leastInterval(List<String> tasks, int n) {
    Map<String, int> map = {};
    int count = 0;
    for (String i in tasks) count = max(count, map[i] = (map[i]??0)+1);
    int result = (count - 1) * (n + 1);
    for (int values in map.values) if (values == count) result++;
    return max(result, tasks.length);
  }
}