class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  TreeNode? sortedArrayToBST(List<int> nums) {
    if (nums.isEmpty) return null;
    return TreeNode(nums[nums.length ~/ 2],sortedArrayToBST(nums.sublist(0,nums.length ~/ 2)),sortedArrayToBST(nums.sublist(nums.length ~/ 2+1))) ;
  }
}

void main(List<String> args) {}
