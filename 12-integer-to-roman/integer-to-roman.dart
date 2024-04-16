class Solution {
  String intToRoman(int num) {
    Map<int,List<String>> map = {
      1: ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"],
      10: ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"],
      100 : ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"],
      1000 : ["", "M", "MM", "MMM", "MMMM"],
    };
    String res ='';
    for(int i =1;i<=1000;i*=10){
      res = '${map[i]![(num ~/ i)%10]}$res';
    }
    return res;
  }
}