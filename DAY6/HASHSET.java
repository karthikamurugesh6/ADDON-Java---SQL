package method;
import java.util.HashSet;
public class StudentEmail {
	public static void main(String[]args) {
		HashSet<String> studentemail=new HashSet();
		studentemail.add("karthika25@gmail.com");
		studentemail.add("monika24@gmail.com");
		
		for(String data:studentemail) {
			System.out.println(data);
		}
	}

}
