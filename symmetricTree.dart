class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool isSymmetric(TreeNode? root) {
    return root == null || recursiveSysmetric(root.left, root.right);
  }

  bool recursiveSysmetric(TreeNode? leftNode, TreeNode? rightNode) {
    if (leftNode == null || rightNode == null) {
      return leftNode == rightNode;
    } else if (leftNode.val != rightNode.val) {
      return false;
    } else {
      return recursiveSysmetric(leftNode.left, rightNode.right) &&
          recursiveSysmetric(leftNode.right, rightNode.left);
    }
  }
}
