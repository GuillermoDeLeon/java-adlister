
// this DAO class will provide access to our model data, but will not require accessing the ListProductsDAO class directly
//instead, we will reference the Interface
public class DaoFactory {
    private static Products productsDao; //interface

    public static Products getProductsDao() {
        if(productsDao == null) {
            productsDao = new ListProductsDao(); //this is the only reference to the ListProductsDAO class
        }
            // this is an instance of the ListProductsDAO class
            return productsDao;

    }
}
