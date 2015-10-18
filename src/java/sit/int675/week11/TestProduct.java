/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sit.int675.week11;

import java.util.Scanner;

/**
 *
 * @author Student Lab
 */
public class TestProduct {
    public static void main(String[] args) {
        findById();
    }
    
    public static void findById() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Search Product ID: (0 to stop)");
        int choice = sc.nextInt();
        while (choice > 0) {
            Product p = Product.findById(choice);
            if (p == null) {
                System.out.println("Product ID " + choice + "does not exist... Try again!!");
            } else {
                System.out.println("ID: " + p.getProductId() + ",Des: " + p.getDescription() + ",Price: "
                        +  p.getPrice())  ;

            }
            System.out.println("Search Product ID: (0 to stop)");
            choice = sc.nextInt();
        }
    }
}
