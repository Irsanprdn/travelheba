class CarouselModel {
  var image;

  CarouselModel(this.image);
}

List<CarouselModel> carousels = carouselsData.map((item) => CarouselModel(item['image'])).toList();

var carouselsData = [
  {"image": "assets/images/demo1.jpg"},
  {"image": "assets/images/demo2.jpg"},
  {"image": "assets/images/demo3.jpg"},
];

