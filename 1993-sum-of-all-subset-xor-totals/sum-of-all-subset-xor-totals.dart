class Solution {
  int subsetXORSum(List<int> n,[int i = 0, int x = 0]) {
    if(n.length == i || n.length==0) return x;
    return subsetXORSum(n,i+1,x^n[i]) + subsetXORSum(n,i+1,x);
  }
 
}