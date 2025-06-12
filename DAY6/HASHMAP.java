package method;
import java.util.Map;
import java.util.HashMap;
public class EmailProgram {
            public static void main(String[]args) {
            	HashMap<String,Integer> mark=new HashMap();
            	mark.put("karthika", 50);
            	mark.put("weekey", 50);
            	int totalMarks=0;
            	for(int marks:mark.values()) {
            		totalMarks +=marks;
            	}
            		System.out.println("TotalMarks👀:"+totalMarks);
            		double avg=totalMarks/mark.size();
            		System.out.println("Average🥴:"+avg);
            		for(Map.Entry<String,Integer>entry : mark.entrySet()) {
            			System.out.println(entry.getKey()+" "+entry.getValue());
            		}
            }
}
