class Solution {
  int partitionString(String s) {
    List<int> freq = List.filled(26,0);
    int res = 0;
    for(int i=0;i<s.length;i++){
      int index = s.codeUnitAt(i)-97;
      if(freq[index]++==1){
        res++;
        freq = List.filled(26,0);
        i--;
      }
    }
    
    return res+1;
  }
}