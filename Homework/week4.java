package Homework;

import java.util.Scanner;

public class week4 {
    public static void main(String[] args) {
        /*
         * Write a program that asks your name and prints “Hello your name” five times.
         * Use a loop.
         */
        Scanner sc = new Scanner(System.in);
        System.out.print("Please enter your name: ");
        String name = sc.next();
        for (int i = 0; i < 6; i++) {
            System.out.println("Hello " + name);
        }

        /* while loop */

        System.out.println("Please enter your name: ");
        String name1 = sc.next();
        int a = 0;
        while (a < 6) {
            System.out.println("Hello " + name1);
            a++;
        }
        sc.close();
        ;
        /*
         * 
         * 2. Write a program that displays the following table (note that 1 mile is
         * 1.609 kilometers):
         * 
         * Miles Kilometers
         * 
         * 1 1.609
         * 
         * 2 3.218
         * 
         * … ….
         * 
         * 9 14.481
         * 
         * 10 16.090
         * 
         */
        System.out.println("Miles " + " Kilometer");

        for (int i = 1; i < 11; i++) {
            float km = i * 1.609F;

            System.out.println(i + "         " + km);
        }
        /*
         * 3. Write a program that generates the following table:
         * 
         * Number Square
         * 
         * 10 100
         * 
         * 9 81
         * 
         * .. ….2 4
         * 
         * 1 1
         */

        System.out.println("Number  " + "  Square");
        int b = 10;
        while (b > 1) {
            int sq = b * b;
            System.out.println(b + "         " + sq);
            b--;
        }

    }
}
