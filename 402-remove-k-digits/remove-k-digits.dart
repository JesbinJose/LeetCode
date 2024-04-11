class Solution {
  String removeKdigits(String num, int k) {
    String result = "";
    int len = num.length;

    for (int i = 0; i < len; i++) {
      while (k > 0 && result.isNotEmpty && result[result.length - 1].compareTo(num[i]) > 0) {
        result = result.substring(0, result.length - 1);
        k--;
      }
      if (!(result.isEmpty && num[i] == '0')) result += num[i];
    }
    if(result.length - k < 0) return '0';
    result = result.substring(0, result.length - k);

    return result.isEmpty ? '0' : result;
  }
}
