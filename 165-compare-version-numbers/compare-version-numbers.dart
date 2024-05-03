class Solution {
  int compareVersion(String version1, String version2) {
    final v1 = version1.split('.').map((e) => int.parse(e)).toList();
    final v2 = version2.split('.').map((e) => int.parse(e)).toList();
    final int len,ans;
    final list;
    if(v1.length < v2.length){
        len = v1.length;
        ans = -1;
        list = v2;
    } else {
        len = v2.length;
        ans = 1;
        list = v1;
    }
    int i;
    for(i = 0; i < len; i++){
        if(v1[i] < v2[i]) return -1;
        if(v1[i] > v2[i]) return 1; 
    }
    for(i; i < list.length; i++) if(list[i] != 0) return ans;
    return 0;
  }
}