class Solution {
  int kthFactor(int n, int k) {
    int i = 0;
    while(i++<=n) if(n%i==0&&--k==0) return i;
    return -1;
  }
}