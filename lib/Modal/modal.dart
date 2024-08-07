import 'dart:math';

class ProductModal
{
  late int id,price;
  late String title,description,category,image;
  late Rating rating;
  ProductModal(this.id, this.price, this.title, this.description, this.category,
      this.image,this.rating);

  factory ProductModal.fromJson(Map m1)
  {
    return ProductModal(m1['id'], m1['price'], m1['title'], m1['description'], m1['category'], m1['category'],Rating.fromJson(m1['rating']));
  }
}

class Rating
{
  late int rate,count;

  Rating(this.rate, this.count);
  
  factory Rating.fromJson(Map m1)
  {
    return Rating(m1['rate'], m1['count']);
  }
}