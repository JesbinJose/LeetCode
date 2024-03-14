class Solution {
  public int maxTwoEvents(int[][] A) {
    int n = A.length;
    Arrays.sort(A, (a, b) -> a[0] != b[0] ? a[0] - b[0] : a[1] - b[1]);
    int[] maxRight = new int[n];
    maxRight[n - 1] = A[n - 1][2];
    for(int i = n - 2; i >= 0; i--) maxRight[i] = Math.max(maxRight[i + 1], A[i][2]);
    int ans = 0;
    for(int i = 0; i < n; i++){
      int endTime = A[i][1];
      int l = i + 1, r = n - 1;
      int idx = -1;
      while(l <= r){
        int mid = l + (r - l) / 2;
        if(A[mid][0] > endTime){
          idx = mid;
          r = mid - 1;
        }else l = mid + 1;
      }
      if(idx == -1) ans = Math.max(ans, A[i][2]);
      else ans = Math.max(ans, A[i][2] + maxRight[idx]);
    }
    return ans;
  }
}