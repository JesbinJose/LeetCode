class Solution {
  int kthFactor(int n, int k) {
    for(int i = 0;i++<=n;) if(n%i==0&&k--==1) return i;
    return -1;
  }
}