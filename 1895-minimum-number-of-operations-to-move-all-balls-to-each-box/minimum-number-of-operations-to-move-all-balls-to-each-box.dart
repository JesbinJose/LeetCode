class Solution {
  List<int> minOperations(String boxes) {
    List<int> res = List.filled(boxes.length,0);
    for(int i =0;i<boxes.length;i++){
      for(int j = i ; j < boxes.length ; j++) if(boxes[j]=='1') res[i] += j - i;
      for(int j = i ; j >= 0 ; j--) if(boxes[j]=='1') res[i] += i - j;
    }
    return res;
  }
}