public class Config {
    //this class will not be pushed t Github, so it will only be available locally

    // url host for mysql
    public String getUrl() {
        return "jdbc:mysql://localhost/contacts_db?serverTimezone=UTC&useSSL=false";
    }

    //mysql username
    pubic String getUsername() {
        return "root";
    }

    //mysql password
    public String getPassword() {
        return "codeup";
    }

}
