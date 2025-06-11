class singlelevel{
   void message(){
       System.out.println("karthika");
   } 
}
class subclass extends singlelevel{
    void view(){
        System.out.println("monika");
    }
}
class Main {
    public static void main(String[] args) {
        subclass s=new subclass();
        s.message();
        s.view();
    }
}
