class Solution {
  List<List<int>> insert(List<List<int>> k, List<int> n) {
    int l = k.length , i=0;
    List<List<int>> ans =[];
    while(i<l && k[i][1]< n[0]) ans.add(k[i++]); 
    while(i<l && k[i][0] <= n[1]) n = [min(k[i][0], n[0]),max(k[i++][1], n[1])];
    ans.add(n);
    while(i<l) ans.add(k[i++]); 
    return ans;
  }
}