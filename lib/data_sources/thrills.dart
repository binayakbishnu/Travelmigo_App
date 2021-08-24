import 'package:travelmigo_2021/data_sources/thrills_detail.dart';

class Thrills {
  String pic;
  String destination;
  String desp;
  List<ThrillsDetails> details;

  Thrills({
    this.pic = "",
    this.destination = "",
    this.desp = "",
    this.details = const [],
    // List<ThrillsDetails> details,
  });
}

List<Thrills> thrills = [
  Thrills(
    pic: 'resources/images/london-1.jpg',
    destination: "Mexico",
    desp: "Home of amazing moments",
    details: detailsLondon,
  ),
  Thrills(
    pic: 'resources/images/paris-1.jpg',
    destination: "",
    desp: "Land of fashion, food and fine wine",
    details: detailsParis,
  ),

  //TODO descriptions
  Thrills(
    pic: 'resources/images/cairo-1.jpg',
    destination: "",
    desp: "Inventore, quis distinctio! Suscipit!",
    details: detailsCairo,
  ),
  Thrills(
    pic: 'resources/images/tokyo-1.jpg',
    destination: "",
    desp: "Ducimus officiis aspernatur, dignissimos.",
    details: detailsTokyo,
  ),
  Thrills(
    pic: 'resources/images/moscow-1.jpg',
    destination: "",
    desp: "Tenetur sapiente corrupti quia, suscipit!",
    details: detailsMoscow,
  ),
];
