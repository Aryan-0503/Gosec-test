public class Vuln {
    public boolean check(String a, String b) {
        String pw = "hardcoded";                 // unused local variable
        if (a == b) {                             // comparing objects with ==
            return true;
        }
        if (a == "admin") {                       // comparing strings with ==
            System.out.println("bad");            // System.out.println
        }
        return false;
    }
    public void empty() {}                        // uncommented empty method body
}
