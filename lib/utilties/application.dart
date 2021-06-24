class App{
  final String imgurl;
  final String placename;
  final String nooflight;

  App({  
   required this.imgurl,required this.placename,required this.nooflight});
}

List <App> item=[App(
  imgurl:"assets/images/bed.svg",
  placename: "Bed room",
  nooflight:"4 Lights"
),
App(imgurl: "assets/images/room.svg",
placename:"Living room",
nooflight:"2 Lights"
),
App(imgurl: "assets/images/kitchen.svg",
placename:"Kitchen",
nooflight:"5 Lights"
),

App(imgurl: "assets/images/bathtube.svg",
placename:"Bath room",
nooflight:"1 Light"
),

App(imgurl: "assets/images/house.svg",
placename:"Outdoor",
nooflight:"5 Lights"
),
App(imgurl:"assets/images/balcony.svg",
placename:"Balcony",
nooflight:"2 Lights"
),

];