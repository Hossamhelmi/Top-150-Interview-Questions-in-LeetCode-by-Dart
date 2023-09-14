class Solution {
  int removeDuplicates(List<int> nums) {
    List<int> nums2 = [];

    for (int num in nums) {
      if(!nums2.contains(num)) nums2.add(num);
    }

    nums.clear();
    for(int num in nums2){
      nums.add(num);
    }
    return nums.length;
  }
}