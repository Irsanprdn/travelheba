class PopularDestinationModal {
  var name;
  var country;
  var image;

  PopularDestinationModal(this.name, this.country, this.image);
}

List<PopularDestinationModal> populars = popularsData
    .map((item) =>
        PopularDestinationModal(item['name'], item['country'], item['image']))
    .toList();

var popularsData = [
  {
    "name": "Bandung",
    "country": "Indonesia",
    "image": "assets/images/bandung.jpg"
  },
  {
    "name": "Serang",
    "country": "Indonesia",
    "image": "assets/images/serang.jpg"
  },
  {
    "name": "Surabaya",
    "country": "Indonesia",
    "image": "assets/images/surabaya.jpg"
  },
  {"name": "Bali", "country": "Indonesia", "image": "assets/images/bali.jpg"},
  {
    "name": "Wakatobi",
    "country": "Indonesia",
    "image": "assets/images/wakatobi.jpg"
  },
];
