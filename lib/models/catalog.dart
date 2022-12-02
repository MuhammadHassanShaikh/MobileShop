import 'dart:convert';

class CatalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: "i phone 12 pro",
        desc: "apple i phone 12 generation",
        price: 999,
        color: "#33505a",
        image:
            "peg;base64,/9jdata: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")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  Item copyWith({
    int? id,
    String? name,
    String? desc,
    num? price,
    String? color,
    String? image,
  }) {
    return Item(
      id: this.id,
      name: this.name,
      desc: this.desc,
      price: this.price,
      color: this.color,
      image: this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as int,
      name: map['name'] as String,
      desc: map['desc'] as String,
      price: map['price'] as num,
      color: map['color'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.price == price &&
        other.color == color &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}


  // factory Item.fromMap(Map<String, dynamic> map) {
  //   return Item(
  //       id: map["id"],
  //       name: map["name"],
  //       desc: map["desc"],
  //       price: map["price"],
  //       color: map["color"],
  //       image: map["image"]);
  // }
  // toMap() => {
  //       "id": id,
  //       "name": name,
  //       "desc": desc,
  //       "price": price,
  //       "color": color,
  //       "image": image
  //     };

