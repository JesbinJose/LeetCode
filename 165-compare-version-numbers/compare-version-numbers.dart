class Solution {
  int compareVersion(String version1, String version2) {
    var nums1 = version1.split('.');
    var nums2 = version2.split('.');
    var n1 = nums1.length;
    var n2 = nums2.length;
    var maxLen = max(n1, n2);
    for (var i = 0; i < maxLen; i++) {
      var val1 = i < n1 ? int.parse(nums1[i]) : 0;
      var val2 = i < n2 ? int.parse(nums2[i]) : 0;
      if (val1 < val2) return -1;
      if (val1 > val2) return 1;
    }
    return 0;
  }
}