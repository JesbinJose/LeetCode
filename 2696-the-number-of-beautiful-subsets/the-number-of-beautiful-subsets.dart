class Solution {
  int beautifulSubsets(List<int> nums, int k) {
    Map<int,int> illegal = {};
    int ans = 0;
    int dfs(int idx){
      if(idx==nums.length)return ++ans;
      final n = nums[idx];
      if(!illegal.containsKey(n) || illegal[n] == 0){
        illegal[n+k] = (illegal[n+k]??0)+1;
        illegal[n-k] = (illegal[n-k]??0)+1;
        dfs(idx+1);
        illegal[n+k]=illegal[n+k]!-1;
        illegal[n-k]=illegal[n-k]!-1;
      }
      return dfs(idx+1);
    }
    dfs(0);
    return ans-1;
  }
}