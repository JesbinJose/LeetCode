class Solution {
  int firstMissingPositive(List<int> nums) {
    int la = 0;
    Map<int,bool> map = {};
    for(int num in nums) if(num > 0){
      map[num] = true;
      la =max(la,num);
    }
    for(int i = 1;i<=la;i++)if(map[i]==null) return i;
    return la+1;
  }
}
