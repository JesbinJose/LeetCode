class Solution {
  int trap(List<int> height) {
    int curMax = height[0], lastIndex = 0, curSum = 0, res = 0;
    for (int i = 1; i < height.length; i++)
      if (height[i] >= curMax) {
        curMax = height[i];
        lastIndex = i;
        res += curSum;
        curSum = 0;
      } else curSum += curMax - height[i];
    int tempMax = 0;
    curMax = height.last;
    curSum = 0;
    for (int i = height.length - 2; i >= lastIndex; i--) 
      if (height[i] >= curMax) {
        curMax = height[i];
        res += curSum;
        curSum = 0;
      } else curSum += curMax - height[i];
    return res;
  }
}
