package method;
import java.util.ArrayList;
public class collection {
            public static void main(String[]args) {
            	ArrayList<Object> arr=new ArrayList<Object>();
            	arr.add("A");
            	arr.add("cs");
            	arr.add("3");
            	arr.add("hari");
            	arr.add("priya");
       System.out.println(arr.get(1));
       //for(type iteration;existing variable)
       for(Object data:arr) {
    	   System.out.println(data);
       }
            }
}
