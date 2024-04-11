class Solution {
  String removeKdigits(String num, int k) {
    String result = "";
    for (int i = 0; i < num.length; result += num[i++]) {
      while (k > 0 && result.isNotEmpty && result[result.length - 1].compareTo(num[i]) > 0) {
        result = result.substring(0, result.length - 1);
        k--;
      }
    }
    result = result.substring(0, result.length - k).replaceAll(RegExp(r'^0+(?=.)'), '');
    return result.isEmpty ? '0' : result;
  }
}
