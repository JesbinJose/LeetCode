class Solution {
  int countStudents(List<int> students, List<int> sandwiches) {
    int i = 0 , j = 0;
    while(j<students.length&&i<sandwiches.length){
      if(students[j]==sandwiches[i]){
        students.removeAt(j);
        i++;
        j=0;
      }else j++;
    }
    return students.length;
  }
}