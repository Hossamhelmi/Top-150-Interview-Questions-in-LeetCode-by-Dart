int romanValue (String roman){
  switch(roman){
    case   "I": {
return 1;
    }
        case   "V" :{
return 5;
        }
        case   "X" :{
return 10;
    }
        case   "L" :{
return 50;
    }
        case   "C" :{
return 100;
    }
        case   "D" :{
return 500;
    }
            case   "M" :{
return 1000;
    }
    default: { return 0; } 
  }


}
class Solution {
  int romanToInt(String s) {
      
      int sum = 0;
      for(int i = 0;i< s.length;i++){
     int x=   romanValue(s[i]);
     if(i != s.length-1){
int y = romanValue(s[i+1]);
        if(x<y){
sum += y-x;
i++;
        }else {
          sum += x;
        }
     }else 
        {
          sum += x;
        }

      }
      return sum;

  }
}