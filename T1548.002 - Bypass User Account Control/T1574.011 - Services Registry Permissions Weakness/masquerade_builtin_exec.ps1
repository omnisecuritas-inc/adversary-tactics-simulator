Add-Type -TypeDefinition @'
public class Test {
    public static void Main(string[] args) {
        System.Console.WriteLine("tweet, tweet");
    }
}
'@ -OutputAssembly "#{executable_filepath}"

Start-Process -FilePath "#{executable_filepath}"
