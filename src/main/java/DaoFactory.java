import java.sql.SQLException;

public class DaoFactory {
    private static Ads adsDao;
    private static Config config;

    static {
        try {
            config = new Config();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static Ads getAdsDao() {
        if (adsDao == null) {
//            adsDao = new ListAdsDao();
            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }
}
