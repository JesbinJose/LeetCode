class Solution {
  TreeNode? bstToGst(TreeNode? root) {
    int helper(TreeNode? root,int sum){
      if(root==null) return sum;  
      root.val += helper(root.right,sum);
      return helper(root.left,root.val);
    }
    helper(root,0);
    return root;
  }
}