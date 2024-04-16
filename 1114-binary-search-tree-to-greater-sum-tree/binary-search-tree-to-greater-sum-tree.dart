class Solution {
  TreeNode? bstToGst(TreeNode? root) {
    helper(root,0);
    return root;
  }
  int helper(TreeNode? root,int sum){
    if(root==null) return sum;  
    root.val += helper(root.right,sum);
    return helper(root.left,root.val);
  }
}