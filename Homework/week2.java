
package Homework;

import java.util.Scanner;

public class week2 {
    public static void main(String[] args) {
        /*
         * 1. Write a program to check whether a person can cast a vote or not. The
         * condition is you must be over 18 years old to vote.
         */
        int age = 22;
        if (age >= 18) {
            System.out.println("You can vote");
        } else {
            System.out.println("You are not eligible");
        }
        /*
         * Write a program to calculate SI.
         * 
         * Formula Simple Interest = (PrincipleAmount*Time*Rate/100);
         */

        int p = 1000;
        int t = 3;
        float r = 2.5F;
        System.out.println("The SI unit is " + p * t * r);

        /*
         * . Write a program to calculate, area of the triangle, and the Volume of the
         * Cube and Cuboid.
         * 
         * Formula: Volume of Cuboid = length*width*height; and Volume of Cube:
         * side*side*side;
         */

        int base = 2;
        int height = 22;
        int area = (base * height) / 2;
        System.out.println("Area of triangele: " + area);

        int s1 = 3;
        int s2 = 5;
        float s3 = 7.6F;
        System.out.println("The volume cube: " + s1 * s2 * s3);

        int l = 22;
        int b = 23;
        int h = 14;
        System.out.println("The volume of cuboid: " + l * b * h);

        /* Write the ternary operator for question no. 1 */
        int Age = 13;
        boolean testExpression = (Age >= 18);
        String result = testExpression ? "Eligible" : "Not Eligible";
        System.out.println(result);

        /*
         * Write a program to take two integer inputs from the user and print the sum
         * and product of them.
         */

        int num1 = 22;
        int num2 = 46;
        int sum = num1 + num2;
        System.out.println("Sum: " + sum);

        /*
         * Take the name, roll number, and field of interest from the user and print in
         * the format below: Hey, my name is XYZ and my roll number is XYZ. My field of
         * interest are xyz.
         */

        Scanner sc = new Scanner(System.in);
        // System.out.println("Enter your name");
        // String name = sc.next();
        // System.out.println("Enter your roll number:");
        // int roll_num = sc.nextInt();
        // System.out.println("What are the yopic of your interest");
        // String interest1 = sc.next();
        // String interest2 = sc.next();
        // String interest3 = sc.next();
        // System.out.println("Hey, my name is " + name + " and my roll number is " +
        // roll_num
        // + ". My field of interest are " + interest1 + interest2 + interest3);

        /*
         * 8. Take side of a square from user and print area and perimeter of it. Also,
         * calculate Simple Interest, Area of triangle and Volume of Cube and Cuboid.
         * Take the attributes as user input.
         * 
         */
        // System.out.println("Enter all four side of a rectangle:");
        // System.out.print("Side 1 :");
        // int Side1 = sc.nextInt();
        // System.out.print("Side 2: ");
        // int Side2 = sc.nextInt();
        // System.out.print("Side 3: ");
        // int Side3 = sc.nextInt();
        // System.out.print("Side 4: ");
        // int Side4 = sc.nextInt();
        // int perimeter = Side1 + Side2 + Side3 + Side4;
        // System.out.println("The perimeter of rectange is: " + perimeter);

        /*
         * Ask user to give two double input for length and breadth of a rectangle and
         * print area type casted to int.
         */

        // System.out.print("Enter length: ");
        // double length = sc.nextDouble();
        // System.out.print("Enter breadth: ");
        // double breadth = sc.nextDouble();
        // double Area = length * breadth;
        // int intarea = (int) Area;
        // System.out.println("The are of rectangle is: " + intarea);

        /*
         * Write a program to calculate the total marks of four subjects of a student
         * and the total percentage secured. And use the following conditions to
         * generate the final result;
         * 
         * a. If equal to or more than 70 -> First Class
         * 
         * b. If more than 59 -> Upper Second Class
         * 
         * c. If more than 49 -> Second class
         * 
         * d. If more than 39 -> Third class and if below than 40 the result is fail.
         * 
         * Hint: Use ternary operator
         */

        System.out.print("Enter mark of mathematics: ");
        int maths = sc.nextInt();
        System.out.print("Enter mark of science: ");
        int sci = sc.nextInt();
        System.out.print("Enter mark of english: ");
        int eng = sc.nextInt();
        System.out.print("Enter mark of nepali: ");
        int nep = sc.nextInt();
        System.out.print("Enter mark of computer: ");
        int com = sc.nextInt();

        float percentage = (maths + sci + nep + eng + com) / 5F;
        System.out.println("The total percentage is:" + percentage);

        String test = (percentage > 70) ? "First Class"
                : (percentage > 59) ? ("Upper Second Class")
                        : (percentage > 49) ? "Second class" : (percentage > 39) ? "Third class" : "Fail";

        System.out.println(test);

    }

}
