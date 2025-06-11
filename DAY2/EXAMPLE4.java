import java.util.Random;
import java.util.Scanner;
class Main {
    static int OTP(){
        Random ran = new Random();
        return 1000 + ran.nextInt(5000);
    }
    public static void main(String[] args){
        Scanner s=new Scanner(System.in);
        System.out.println("enter your mob no");
        long b=s.nextLong();
        long a=91234567890L;
        if(a==b){
        int otp = OTP();
        System.out.println("one time password is = "
        +otp);
        }
        else{
        System.out.println("invalid");
            }
        }
     }
