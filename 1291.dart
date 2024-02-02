class Solution {
  List<int> sequentialDigits(int low, int high) {
    List<int> result = [];
    String check = "123456789";
    for(int i = 0;i<check.length;i++)
      for(int j = i+1;j<check.length;j++) {
        if('$low'.length>(j+1-i)&&'$high'.length<(j+1-i)) continue;
        int sub = int.parse(check.substring(i,j+1));
        if(high>= sub && low<=sub) result.add(sub);
      }
    result.sort();
    return result;
   }
}