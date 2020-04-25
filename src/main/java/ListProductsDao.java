import java.util.ArrayList;
import java.util.List;

//this is DAO (data access object), or data access class)
public class ListProductsDao implements Products {
    //this class accesses product information, list products, find product by id, create product

    //this will list all the products in the database table
    private List<Product> products;

    //constructor for this DAO class
    public ListProductsDao() {
        this.products = new ArrayList<>(); //we can get info from database and work with it as an arraylist
        //add some dummy data
        Product hammer = new Product();
        hammer.setId(1);
        hammer.setTitle("A Bad Hammer");
        hammer.setPriceInCents(3000);
        hammer.setDescription("A bad hammer.");

        products.add(hammer);

        Product xbox = new Product();
        xbox.setId(2);
        xbox.setTitle("Xbox Series X");
        xbox.setPriceInCents(50000);
        xbox.setDescription("This will be more powerful than a gaming PC LULz.");

        products.add(xbox);

        Product chiaPet = new Product();
        xbox.setId(3);
        xbox.setTitle("1999 vintage chia pet");
        xbox.setPriceInCents(50000);
        xbox.setDescription("useless product");

        products.add(chiaPet);

    }

    //implement our interface requirements (from Products.java)
    @Override
    public Product findById(long id) {
        //we want to return the Product object for the id passed in
        //this will return the full row in the database
        //ie id - title - priceInCents - description  (the full row)
//        return products.get()
        return products.get((int)id - 1);
    }

    @Override
    public long createProduct(Product product) {
        //create product and insert to our ArrayList (eventually to the DB)
        //assign an id
        product.setId(products.size() + 1); //the same as auto-increment so it will always be unique

        //add a new Product to the ArrayList
        // this will add the Product type project to the arrayList
        products.add(product); //when we call the createProduct method, we are sending in a Product type object
        return product.getId();
    }
}
