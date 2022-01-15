import 'package:travelmigo_2021/data_sources/places_details.dart';

class Places {
  String pic;
  String city;
  String country;
  String desp;
  List<PlacesDetails> details;

  Places({
    this.pic = "",
    this.city = "",
    this.country = "",
    this.desp = "",
    this.details = const [],
    // List<PlacesDetails> details,
  });
}

List<Places> places = [
  Places(
    pic: 'resources/images/london-1.jpg',
    city: "London",
    country: "United Kingdom",
    desp: "Home of amazing moments",
    details: detailsLondon,
  ),
  Places(
    pic: 'resources/images/paris-1.jpg',
    city: "Paris",
    country: "France",
    desp: "Land of fashion, food and fine wine",
    details: detailsParis,
  ),
  Places(
    pic: 'resources/images/cairo-1.jpg',
    city: "Cairo",
    country: "Egypt",
    desp: "Pay a visit to the Sphinx!",
    details: detailsCairo,
  ),
  Places(
    pic: 'resources/images/tokyo-1.jpg',
    city: "Tokyo",
    country: "Japan",
    desp: "Ducimus officiis aspernatur, dignissimos.",
    details: detailsTokyo,
  ),
  Places(
    pic: 'resources/images/moscow-1.jpg',
    city: "Moscow",
    country: "Russia",
    desp: "Tenetur sapiente corrupti quia, suscipit!",
    details: detailsMoscow,
  ),
];
