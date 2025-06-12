package method;
import java.util.ArrayList;
import java.util.Iterator;

class Student {
    private String name;
    private int rollNumber;

    public  Student(String name, int rollNumber) {
        this.name = name;
        this.rollNumber = rollNumber;
    }

    public String getName() {
        return name;
    }

    public int getRollNumber() {
        return rollNumber;
    }

    public String toString() {
        return "Name: " + name + ", Roll Number: " + rollNumber;
    }
}

public class  Array {
    public static void main(String[] args) {
       
        ArrayList<Student> students = new ArrayList<>();
        students.add(new Student("abc", 22));
        students.add(new Student("def", 23));
        students.add(new Student("ghi", 24));
        students.add(new Student("jkl", 25));

       
        Iterator<Student> iterator = students.iterator();

        
        System.out.println("Student List:");
        while (iterator.hasNext()) {
            System.out.println(iterator.next());
        }
    }
}

