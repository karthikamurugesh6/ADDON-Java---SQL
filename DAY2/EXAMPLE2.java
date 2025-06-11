import java.util.Random;
import java.util.Scanner;
class Main {
    static int OTP(){
        Random ran = new Random();
        return 1000 + ran.nextInt(5000);
    }
    public static void main(String[] args){
        Scanner s=new Scanner(System.in);
        System.out.println("enter your name:");
        String a=s.next();
        System.out.println("enter your mob no:");
        String b=s.next();
        System.out.println("enter your email id:");
        String c=s.next();
        System.out.println("enter your address:");
        String d=s.next();
        System.out.println("enter your skillset:");
        String e=s.next();
        System.out.println("enter your projec description:");
        String f=s.next();
        System.out.println("my name is:"+a);
        System.out.println("my mob no:"+b);
        System.out.println("my email id:"+c);
        System.out.println("my address:"+d);
        System.out.println("my skillset:"+e);
        System.out.println("my project description:"+f);
       
            
        }
     }
