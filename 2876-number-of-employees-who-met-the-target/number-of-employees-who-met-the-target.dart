class Solution {
  int numberOfEmployeesWhoMetTarget(List<int> hours, int target) {
    int res = 0;
    for(int i in hours) if(i >= target) res++;
    return res;
  }
}