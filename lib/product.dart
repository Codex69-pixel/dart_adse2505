//  create a product   class
class product
{
 final String id;
 final String name;
 final double price;
 final bool instock;
 final List<String> categories;

 product  ({required this.id, required this.name, required this.price, required this.instock, required this.categories});
}