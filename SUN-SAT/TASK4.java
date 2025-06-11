import java.util.Scanner;
class main {
    	public static void main(String[] args) {
    	Scanner s=new Scanner(System.in);
    	System.out.print("Enter the sentence:");
			String a=s.nextLine();
			String b[]=a.split(" ");
			System.out.println("word count-"+b.length);
		  int c=a.length();
			System.out.println("character count-"+c);
			String rev="";
			for(int i=a.length()-1;i>=0;i--){
			    rev=rev+a.charAt(i);
			}
			System.out.println("reverse string-"+rev);
		  String lw=b[0];
			for(int i=1;i<b.length;i++){
			    if(b[i].length()>lw.length()){
			        lw=b[i];
			    }
			}
			System.out.println("longest word-"+lw);
		}
 }
