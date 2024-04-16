class Solution {
  int sum = 0;
  TreeNode? bstToGst(TreeNode? root) {
    if (root != null) {
      bstToGst(root!.right);
      root!.val = sum += root!.val;
      bstToGst(root!.left);
    }
    return root;
  }
}