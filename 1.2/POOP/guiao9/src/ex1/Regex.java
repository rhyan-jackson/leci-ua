package ex1;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Regex {
    public static boolean matchesRegex(String pattern, String... strings) {
        Pattern patternObj = Pattern.compile(pattern);

        for (String string : strings) {
            if (string == null) {
                return false;
            }
            
            Matcher matcher = patternObj.matcher(string);
            if (!matcher.find()) {
                return false;
            }
        }
        return true;
    }

    public static String turnNullIfEmptyString(String potentialEmptyString) {
        return potentialEmptyString.isEmpty() ? null : potentialEmptyString;
    }
}
