/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

public class user {
//    public static void main(String[] args) {
//        // The following assert statement will stop execution
//        //     with a message if assertions are turned on.
//        assert false : "Assertions in user.java happens!";
//
//        // The following statement will only be printed if
//        //     assertions are turned off because  assertions
//        //     were not allowed at run time by the -ea parameter.
//        System.out.println("Assertions are not active.");
//    }
    
    private String username;
    private String password;
    private String type;
    
//    public user(String username, String password, String type)
//    {
//        username = this.username;
//        password = this.password;
//        type = this.type;
//    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the password
     * post condition password != null
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     * precondition password != null
     */
    public void setPassword(String password) {
        this.password = password;
//        assert false : String.format("Password cannot be null", password);
    }

    /**
     * @return the type
     */
    public String getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(String type) {
        this.type = type;
    }
    
//    public void checkPassword(String password) {
//        assert password != null: "Password cannot be null!";
////        assert false : "Assertions in user.java happens!";
//        
//    }
    
    // class invariants
    public boolean checkPassword(){
   // assert(password != null): "Password entered is: " + password;
       if(password != null){
            return true;
        }else{
            return false;
        }

//return password != null;

    }
    
}
