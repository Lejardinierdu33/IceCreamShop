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

  static List<IceCream> cesareans() {
    return [

      // 1rst cream
      IceCream(
          'assets/images/ice_cream_1.png',
          'assets/images/ice_cream_logo.png',
          'Ice Cream Vanilla',
          4.8,
          4250,
          'A vanilla ice cream with a futuristic twist, adorned with innovative toppings. Delight in the classic and creamy flavor of vanilla, harmoniously combined with avant-garde toppings that transport your taste buds into the future. Experience the familiar comfort of vanilla while indulging in the excitement of cutting-edge toppings, creating a delightful fusion of tradition and innovation.'),
      
      // 2nd cream
      IceCream(
          'assets/images/ice_cream_2.png',
          'assets/images/ice_cream_logo.png',
          'Ice Cream Mango',
          3.2,
          2870,
          'A vanilla ice cream with a futuristic twist, adorned with innovative toppings. Delight in the classic and creamy flavor of vanilla, harmoniously combined with avant-garde toppings that transport your taste buds into the future. Experience the familiar comfort of vanilla while indulging in the excitement of cutting-edge toppings, creating a delightful fusion of tradition and innovation.'),
      
      // 3trd cream
      IceCream(
          'assets/images/ice_cream_3.png',
          'assets/images/ice_cream_logo.png',
          'Ice Cream Chocolate',
          4.4,
          3420,
          'A vanilla ice cream with a futuristic twist, adorned with innovative toppings. Delight in the classic and creamy flavor of vanilla, harmoniously combined with avant-garde toppings that transport your taste buds into the future. Experience the familiar comfort of vanilla while indulging in the excitement of cutting-edge toppings, creating a delightful fusion of tradition and innovation.'),
      
      // 4rth cream
      IceCream(
          'assets/images/ice_cream_4.png',
          'assets/images/ice_cream_logo.png',
          'Ice Cream Strawberry',
          3.9,
          6540,
          'A vanilla ice cream with a futuristic twist, adorned with innovative toppings. Delight in the classic and creamy flavor of vanilla, harmoniously combined with avant-garde toppings that transport your taste buds into the future. Experience the familiar comfort of vanilla while indulging in the excitement of cutting-edge toppings, creating a delightful fusion of tradition and innovation.'),
      
      // 5ve cream
      IceCream(
          'assets/images/ice_cream_5.png',
          'assets/images/ice_cream_logo.png',
          'Ice Cream Peach',
          4.7,
          7450,
          'A vanilla ice cream with a futuristic twist, adorned with innovative toppings. Delight in the classic and creamy flavor of vanilla, harmoniously combined with avant-garde toppings that transport your taste buds into the future. Experience the familiar comfort of vanilla while indulging in the excitement of cutting-edge toppings, creating a delightful fusion of tradition and innovation.'),
    ];
  }
}
