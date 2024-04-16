class Solution {
  TreeNode? addOneRow(TreeNode? root, int val, int depth) {
    void helper(TreeNode? root,int depth){
      if(root==null)return;
      if(depth==0){
        root.left = TreeNode(val,root.left);
        root.right = TreeNode(val,null,root.right);
      }
      helper(root?.left,depth-1);
      helper(root?.right,depth-1);
    }
    if(depth==1) return TreeNode(val,root);
    helper(root,depth-2);
    return root;
  }
}