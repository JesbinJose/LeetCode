class Solution {
  int numberOfEmployeesWhoMetTarget(List<int> hours, int target) {
    int res = 0;
    for(int i = 0 ; i < hours.length ; i++) if(hours[i] >= target) res++;
    return res;
  }
}