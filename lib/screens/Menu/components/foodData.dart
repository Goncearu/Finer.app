class FoodCardProperties {
  double index;
  String category;
  String image;
  String title;
  String desc;
  double likes;
  bool hasAr;
  double price;
  String weight;
  double quantity = 0;
  FoodCardProperties(
    this.index,
    this.category,
    this.image,
    this.title,
    this.desc,
    this.likes,
    this.hasAr,
    this.price,
    this.weight,
  );
}

List<FoodCardProperties> properties = [
  FoodCardProperties(
    1,
    'Romanesc',
    'https://loremflickr.com/1200/600/salad',
    'Chiftele moldovenesti cu sos marinat',
    'Chiftelute traditionale, sos marinat din ingrediente naturale',
    241,
    true,
    24.00,
    "300g",
  ),
  FoodCardProperties(
      2,
      'Burger',
      'https://loremflickr.com/1100/600/salad',
      'Burger de vita cu salata coleslaw',
      'Chilfa, burger de vita, salata coleslaw, cartofi prajiti, sos',
      421,
      true,
      36.00,
      "540g"),
  FoodCardProperties(
      3,
      'Burger',
      'https://loremflickr.com/1300/600/salad',
      'Burger din vita Yakamoto',
      'Chifla, carne de vita Yakaomoto proaspata din Japonia, cartofi la cuptor cu parmezan si sosul casei',
      121,
      true,
      99.00,
      "950g"),
  FoodCardProperties(
    4,
    'Romanesc',
    'https://loremflickr.com/1400/600/salad',
    'Sarmalute cu mamaliguta',
    'Sarmale facute din ingrediente complet naturale',
    9741,
    true,
    18.00,
    "120g",
  ),
];
