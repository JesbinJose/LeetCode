class Solution {
  bool isValidBST(TreeNode? root,[int? minVal = null, int? maxVal = null]) {
    if (root == null) return true;
    if ((minVal != null && root.val <= minVal) || (maxVal != null && root.val >= maxVal)) return false;
    return isValidBST(root.left, minVal, root.val) && isValidBST(root.right, root.val, maxVal);
  }
}
