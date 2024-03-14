class Solution {
  public int maxTwoEvents(int[][] events) {
    int res = 0, maxVal = 0;
    PriorityQueue<int[]> pq = new PriorityQueue<>(Comparator.comparingInt(a -> a[0]));
    Arrays.sort(events, Comparator.comparingInt(a -> a[0]));
    for (final int[] e : events) {
      while (!pq.isEmpty() && pq.peek()[0] < e[0]) maxVal = Math.max(maxVal, pq.poll()[1]);
      res = Math.max(res, maxVal + e[2]);
      pq.offer(new int[]{e[1], e[2]});
    }
    return res;
  }
}