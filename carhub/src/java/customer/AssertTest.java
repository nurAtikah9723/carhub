/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package customer;

/**
 *
 * @author USER
 */
public class AssertTest {
    public static void main(String[] args) {
        // The following assert statement will stop execution
        //     with a message if assertions are turned on.
        assert false : "Assertions are turned on.";

        // The following statement will only be printed if
        //     assertions are turned off because  assertions
        //     were not allowed at run time by the -ea parameter.
        System.out.println("Assertions are not active.");
    }
}
