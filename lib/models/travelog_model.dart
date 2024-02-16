class TravlogModel {
  var name;
  var content;
  var place;
  var image;

 TravlogModel(this.name, this.content, this.place, this.image);
}

List<TravlogModel> travlogs = travlogsData
    .map((item) =>
    TravlogModel(item['name'], item['content'], item['place'], item['image']))
    .toList();


var travlogsData = [
  {"name": '"Yogyakarta!"',
    "content": "Halo guys, Saya di sini dengan Travelheba!! di Yogyakarta!! mengunjungi alamnya dan mencari taman yang asik buat nongkrong",
    "place": "Yogyakarta, Indonesia",
    "image": "assets/images/travlog_yogyakarta.jpg"
  },
  {"name": '"Tokyo!"',
    "content": "Japan was such a dream and I worked really hard on this vlog, so I hope you enjoyed ",
    "place": "Tokyo, Japan",
    "image": "assets/images/travlog_tokyo.jpg"
  },
  {"name": '"Yogyakarta!"',
    "content": "Halo guys, Saya di sini dengan Travelheba!! di Yogyakarta!! mengunjungi alamnya dan mencari taman yang asik buat nongkrong",
    "place": "Yogyakarta, Indonesia",
    "image": "assets/images/travlog_yogyakarta.jpg"
  },
  {"name": '"Tokyo!"',
    "content": "Japan was such a dream and I worked really hard on this vlog, so I hope you enjoyed ",
    "place": "Tokyo, Japan",
    "image": "assets/images/travlog_tokyo.jpg"
  },
  {"name": '"Yogyakarta!"',
    "content": "Halo guys, Saya di sini dengan Travelheba!! di Yogyakarta!! mengunjungi alamnya dan mencari taman yang asik buat nongkrong",
    "place": "Yogyakarta, Indonesia",
    "image": "assets/images/travlog_yogyakarta.jpg"
  },
  {"name": '"Tokyo!"',
    "content": "Japan was such a dream and I worked really hard on this vlog, so I hope you enjoyed ",
    "place": "Tokyo, Japan",
    "image": "assets/images/travlog_tokyo.jpg"
  },

];