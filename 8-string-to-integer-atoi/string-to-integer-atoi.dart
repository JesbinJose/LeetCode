class Solution {
  int myAtoi(String s) {
    s = s.trimLeft();
    if (!s.startsWith(RegExp(r'^(\d|-|\+){0,1}\d'))) return 0;
    int invalidCharIndex = s.indexOf(RegExp(r'[^\d]'), 1);
    if (invalidCharIndex != -1) s = s.substring(0, invalidCharIndex);
    return BigInt.parse(s).toInt().clamp(-2147483648, 2147483647);
  }
}