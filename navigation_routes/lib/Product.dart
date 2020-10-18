import 'package:scoped_model/scoped_model.dart';

class Product extends Model {
  final String name;
  final String description;
  final int price;
  final String image;
  int rating;

  Product(this.name, this.description, this.price, this.image, this.rating);
   factory Product.fromMap(Map<String, dynamic> json) {
     return Product(
       json['name'],
       json['description'],
       json['price'],
       json['image'],
       json['rating'],
     );
   }
   updateRating(int myRating) {
     rating = myRating;
     notifyListeners();
   }

   static List<Product> getProduct() {
    List<Product> items = <Product>[];
    items.add(Product(
    "Pixel",
    "Pixel is the most feature-full phone ever.",
    800, 
    "1.jpeg",
    0));
    items.add(Product("Laptop",
    "Laptop is the most productive development tool.",
    2000,
    "2.jpeg",
    0));
    items.add(Product("Tablet",
    "Tablet is the most useful device over the meetings.",
    1500,
    "3.jpeg",
    0));
    items.add(Product("Pendrive",
    "Pendrive is useful storage medium.",
    100,
    "4.jpeg",
    0));
    items.add(Product("FloppyDrive",
    "FloppyDrive is useful rescue storage medium.",
    100,
    "5.jpeg",
    0));
    return items;
   }
}