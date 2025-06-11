package program;

import java.io.*;

public class buffer {

	public static void main(String[]args) {

		String filename="C://Users//TEMP.KGISLEDU//Documents//addon.txt";

		try(BufferedReader br=new BufferedReader(new FileReader(filename))){

			String Line;

			if((Line = br.readLine())!=null) {

				System.out.println(Line);

			}

		}

		catch(Exception e) {

			System.out.println("Filenotfound");

		}

	}



}

