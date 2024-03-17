class Solution {
  List<List<int>> insert(List<List<int>> k, List<int> n) {
    int  i=0,index = -1;
    while(i<k.length) 
      if(k[i][1]< n[0]) i++; 
      else if ( k[i][0] <= n[1]) {
        n = [min(k[i][0], n[0]),max(k[i][1], n[1])];
        k.removeAt(i);
      }
      else {
        index=i;
        break;
      }
    print(index);
    if(index !=-1)k.insert(index,n);
    else k.add(n);
    return k;
  }
}