class IceCream {
  String bgImage;
  String icon;
  String name;
  num score;
  num review;
  String description;

  IceCream(
    this.bgImage,
    this.icon,
    this.name,
    this.score,
    this.review,
    this.description,
  );

  static List<IceCream> icescreams() {
    return [
      IceCream(
          'assets/images/ice_cream_1.png',
          'assets/images/ice_cream_logo.png',
          'Ice Cream Vanilla',
          4.8,
          4250,
          'A vanilla ice cream with a futuristic twist, adorned with innovative toppings. Delight in the classic and creamy flavor of vanilla, harmoniously combined with avant-garde toppings that transport your taste buds into the future. Experience the familiar comfort of vanilla while indulging in the excitement of cutting-edge toppings, creating a delightful fusion of tradition and innovation.')
    ];
  }
}
