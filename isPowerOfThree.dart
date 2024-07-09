// easy
class Solution {
  bool isPowerOfThree(int n) {
for(int i=1;i<n;i=i*3){
  if(i==n){
    return true;
  }
}
return false;
  }
}

void main() {
  print( Solution().isPowerOfThree(27));
}