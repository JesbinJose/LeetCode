class Solution {
  int sumEvenGrandparent(TreeNode? root) {
    int res = 0;
    void helper(TreeNode? root , bool isGrandParentEven , bool isParentEven){
      if(root == null) return;
      if(isGrandParentEven) res += root.val;
      bool isEven = root.val % 2 == 0;
      helper(root.left , isParentEven , isEven);
      helper(root.right , isParentEven , isEven);
    }
    helper(root,false,false);
    return res;
  }
}