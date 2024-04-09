class Solution {
  List<String> letterCombinations(String digits) {
    if(digits.length==0) return [];
    Map<String, List<String>> map = {
        "2": ['a', 'b', 'c'],
        "3": ['d', 'e', 'f'],
        "4": ['g', 'h', 'i'],
        "5": ['j', 'k', 'l'],
        "6": ['m', 'n', 'o'],
        "7": ['p', 'q', 'r', 's'],
        "8": ['t', 'u', 'v'],
        "9": ['w', 'x', 'y', 'z'],
    };
    int l = 1 , i = 0;
    for(int i =0;i<digits.length;i++)l*=map[digits[i]]!.length;
    List<String> res=List.filled(l,"");
    void backTracking(String word, int index){
        if(word.length == digits.length) res[i++]=word;
        else for(String char in map[digits[index]]!){
            backTracking('$word$char',index+1);
        }
    }
    backTracking('',0);
    return res;
  }
}