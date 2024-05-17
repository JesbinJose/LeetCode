class Solution {
  int divide(int d, int v) => d == -2147483648 && v == -1 ? 2147483647 : d ~/ v;
}