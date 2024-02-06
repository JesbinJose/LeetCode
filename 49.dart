class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    Map<String,List<String>> map={};
    strs.forEach((v){
        final List<String> s = v.split('');
        s.sort();
        final String key = s.join();
        map[key]??=[];
        map[key]!.add(v);
    });
    return map.values.toList();
  }
}