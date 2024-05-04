class Solution {
  int numRescueBoats(List<int> people, int limit) {
    people.sort();
    int res =0 ;
    for(int l=0,r=people.length-1; l<=r; res++,r--)if(people[l]+people[r]<= limit)l++;
    return res;
  }
}