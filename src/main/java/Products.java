public interface Products {
    //method will return an object of type Product(our bean)
    //searched by id
    Product findById(long id);

    //this method wil insert a Product into our table
    //the return of this will be the id of the product
    long createProduct(Product product);

}
