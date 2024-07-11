class Solution {
    int minOperations(List<String> logs) {

        int count = 0;
        for(int i = 0; i < logs.length; i++) {
            if(logs[i] == "../") {
                if(count > 0) {
                    count--;
                }
            } else if(logs[i] == "./") {
                continue;
            } else {
                count++;
            }
        }
        return count;

    

  }
}

void main() {}