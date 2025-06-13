package method;
import java.util.Scanner;
public class mainprogram {
	public static void main(String[]args) {
		Scanner s=new Scanner(System.in);
		System.out.println("Enter students name:");
		String a=s.nextLine();
		System.out.println("physics mark:");
		int b=s.nextInt();
		System.out.println("chemistry mark:");
		int c=s.nextInt();
		System.out.println("computer science mark:");
		int d=s.nextInt();
		int total=b+c+d;
		System.out.println("total mark:"+total);
		int avg=total/3;
		System.out.println("Average:"+avg+"%");
	}

}
