class Solution {
  int countStudents(List<int> students, List<int> sandwiches) {
    int i = 0 , j = 0;
    Map<int,bool> map ={};
    while(j<students.length&&i<sandwiches.length){
      if(students[j]==sandwiches[i]&&map[j]==null){
        map[j]=true;
        i++;
        j=0;
      }else j++;
    }
    return students.length-map.keys.length;
  }
}