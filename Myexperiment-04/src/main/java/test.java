import java.util.List;

public class test {
    public static void main(String[] args) {
        List<String> excludes = List.of("/login","sb");
        for (String e : excludes){
            System.out.println(e);
        }
    }
}
