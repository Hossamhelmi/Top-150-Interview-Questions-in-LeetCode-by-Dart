   
  class MaxmiumScore {
    public int maximumGain(String s, int x, int y) {
        
        int ab = 0;
        int ba = 0;
        int Min = Math.min(x, y);
        int result = 0;
        
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c > 'b') {
                result += Math.min(ab, ba) * Min;
                ab = 0;
                ba = 0;
            } else if (c == 'a') {
                if (x < y && ba > 0) {
                    ba--;
                    result += y;
                } else {
                    ab++;
                }
            } else {
                if (x > y && ab > 0) {
                    ab--;
                    result += x;
                } else {
                    ba++;
                }
            }
        }
        
        result += Math.min(ab, ba) * Min;
        
        return result;
    }

    public static void main(String[] args) {
        MaxmiumScore obj = new MaxmiumScore();
        String s = "cdbcbbaaabab";
        int x = 4;
        int y = 5;
        System.out.println(obj.maximumGain(s, x, y));
    }
  }

