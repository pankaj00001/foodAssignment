import 'dart:convert';

FoodListModel foodListModelFromJson(String str) => FoodListModel.fromJson(json.decode(str));

String foodListModelToJson(FoodListModel data) => json.encode(data.toJson());

class FoodListModel {
  List<ViewtypeList>? viewtypeList;
  List<ThemeColor>? themeColors;
  String? status;
  int? statusCode;
  String? message;
  String? type;

  FoodListModel({
    this.viewtypeList,
    this.themeColors,
    this.status,
    this.statusCode,
    this.message,
    this.type,
  });

  factory FoodListModel.fromJson(Map<String, dynamic> json) => FoodListModel(
    viewtypeList: json["ViewtypeList"] == null ? [] : List<ViewtypeList>.from(json["ViewtypeList"].map((x) => ViewtypeList.fromJson(x))),
    themeColors: json["theme_colors"] == null ? [] : List<ThemeColor>.from(json["theme_colors"].map((x) => ThemeColor.fromJson(x))),
    status: json["status"],
    statusCode: json["statusCode"],
    message: json["message"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "ViewtypeList": viewtypeList == null ? [] : List<dynamic>.from(viewtypeList!.map((x) => x.toJson())),
    "theme_colors": themeColors == null ? [] : List<dynamic>.from(themeColors!.map((x) => x.toJson())),
    "status": status,
    "statusCode": statusCode,
    "message": message,
    "type": type,
  };
}

class ThemeColor {
  String? bgClr;
  String? serviceId;
  String? txtTitleClr;
  String? txtClr;
  String? prdClr;
  String? catClr;

  ThemeColor({
    this.bgClr,
    this.serviceId,
    this.txtTitleClr,
    this.txtClr,
    this.prdClr,
    this.catClr,
  });

  factory ThemeColor.fromJson(Map<String, dynamic> json) => ThemeColor(
    bgClr: json["bg_clr"],
    serviceId: json["service_id"],
    txtTitleClr: json["txt_title_clr"],
    txtClr: json["txt_clr"],
    prdClr: json["prd_clr"],
    catClr: json["cat_clr"],
  );

  Map<String, dynamic> toJson() => {
    "bg_clr": bgClr,
    "service_id": serviceId,
    "txt_title_clr": txtTitleClr,
    "txt_clr": txtClr,
    "prd_clr": prdClr,
    "cat_clr": catClr,
  };
}

class ViewtypeList {
  String? viewtype;
  String? datatype;
  String? title;
  List<Filter>? filter;
  String? designtype;
  List<Datum>? data;

  ViewtypeList({
    this.viewtype,
    this.datatype,
    this.title,
    this.filter,
    this.designtype,
    this.data,
  });

  factory ViewtypeList.fromJson(Map<String, dynamic> json) => ViewtypeList(
    viewtype: json["viewtype"],
    datatype: json["datatype"],
    title: json["title"],
    filter: json["filter"] == null ? [] : List<Filter>.from(json["filter"].map((x) => Filter.fromJson(x))),
    designtype: json["designtype"],
    data: json["data"] == null ? [] : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "viewtype": viewtype,
    "datatype": datatype,
    "title": title,
    "filter": filter == null ? [] : List<dynamic>.from(filter!.map((x) => x.toJson())),
    "designtype": designtype,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class Datum {
  String? bannerName;
  String? appbannerImage;
  String? redirectTo;
  String? redirectId;
  int? id;
  String? catName;
  String? catImage;
  double? price;
  double? discountedPrice;
  String? discount;
  String? image;
  String? productName;
  String? productDes;
  String? lastOrderdate;
  List<WeightElement>? weight;
  int? sizeid;
  String? sellerName;
  int? sellerId;
  String? sellerImage;
  int? vegType;
  String? returnable;
  int? favStatus;
  String? favIcon;
  Time? time;
  Distance? distance;
  dynamic rating;
  String? review;
  SellerDetails? sellerDetails;

  Datum({
    this.bannerName,
    this.appbannerImage,
    this.redirectTo,
    this.redirectId,
    this.id,
    this.catName,
    this.catImage,
    this.price,
    this.discountedPrice,
    this.discount,
    this.image,
    this.productName,
    this.productDes,
    this.lastOrderdate,
    this.weight,
    this.sizeid,
    this.sellerName,
    this.sellerId,
    this.sellerImage,
    this.vegType,
    this.returnable,
    this.favStatus,
    this.favIcon,
    this.time,
    this.distance,
    this.rating,
    this.review,
    this.sellerDetails,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    bannerName: json["banner_name"],
    appbannerImage: json["appbanner_image"],
    redirectTo: json["redirect_to"],
    redirectId: json["redirect_id"],
    id: json["id"],
    catName: json["cat_name"],
    catImage: json["cat_image"],
    price: json["price"]?.toDouble(),
    discountedPrice: json["discounted_price"]?.toDouble(),
    discount: json["discount"],
    image: json["image"],
    productName: json["product_name"],
    productDes: json["product_des"],
    lastOrderdate: json["last_orderdate"],
    weight: json["weight"] == null ? [] : List<WeightElement>.from(json["weight"].map((x) => WeightElement.fromJson(x))),
    sizeid: json["sizeid"],
    sellerName: json["seller_name"],
    sellerId: json["seller_id"],
    sellerImage: json["seller_image"],
    vegType: json["veg_type"],
    returnable: json["returnable"],
    favStatus: json["fav_status"],
    favIcon: json["fav_icon"],
    time: timeValues.map[json["time"]],
    distance: distanceValues.map[json["distance"]],
    rating: json["rating"],
    review: json["review"],
    sellerDetails: json["seller_details"] == null ? null : SellerDetails.fromJson(json["seller_details"]),
  );

  Map<String, dynamic> toJson() => {
    "banner_name": bannerName,
    "appbanner_image": appbannerImage,
    "redirect_to": redirectTo,
    "redirect_id": redirectId,
    "id": id,
    "cat_name": catName,
    "cat_image": catImage,
    "price": price,
    "discounted_price": discountedPrice,
    "discount": discount,
    "image": image,
    "product_name": productName,
    "product_des": productDes,
    "last_orderdate": lastOrderdate,
    "weight": weight == null ? [] : List<dynamic>.from(weight!.map((x) => x.toJson())),
    "sizeid": sizeid,
    "seller_name": sellerName,
    "seller_id": sellerId,
    "seller_image": sellerImage,
    "veg_type": vegType,
    "returnable": returnable,
    "fav_status": favStatus,
    "fav_icon": favIcon,
    "time": timeValues.reverse[time],
    "distance": distanceValues.reverse[distance],
    "rating": rating,
    "review": review,
    "seller_details": sellerDetails?.toJson(),
  };
}

enum Distance {
  THE_1_KM
}

final distanceValues = EnumValues({
  "1km": Distance.THE_1_KM
});

class SellerDetails {
  String? sellerName;
  int? sellerId;
  int? sellerRating;
  String? sellerAddress;
  String? sellerImage;
  String? sellerOneLineDescription;
  String? sellerLongDescription;
  int? vegType;
  List<SellerPopularProduct>? sellerPopularProducts;

  SellerDetails({
    this.sellerName,
    this.sellerId,
    this.sellerRating,
    this.sellerAddress,
    this.sellerImage,
    this.sellerOneLineDescription,
    this.sellerLongDescription,
    this.vegType,
    this.sellerPopularProducts,
  });

  factory SellerDetails.fromJson(Map<String, dynamic> json) => SellerDetails(
    sellerName: json["seller_name"],
    sellerId: json["seller_id"],
    sellerRating: json["seller_rating"],
    sellerAddress: json["seller_address"],
    sellerImage: json["seller_image"],
    sellerOneLineDescription: json["seller_one_line_description"],
    sellerLongDescription: json["seller_long_description"],
    vegType: json["veg_type"],
    sellerPopularProducts: json["seller_popular_products"] == null ? [] : List<SellerPopularProduct>.from(json["seller_popular_products"].map((x) => SellerPopularProduct.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "seller_name": sellerName,
    "seller_id": sellerId,
    "seller_rating": sellerRating,
    "seller_address": sellerAddress,
    "seller_image": sellerImage,
    "seller_one_line_description": sellerOneLineDescription,
    "seller_long_description": sellerLongDescription,
    "veg_type": vegType,
    "seller_popular_products": sellerPopularProducts == null ? [] : List<dynamic>.from(sellerPopularProducts!.map((x) => x.toJson())),
  };
}

class SellerPopularProduct {
  int? prodId;
  String? prodName;
  String? prodDescription;
  int? prodPrice;
  String? prodImage;

  SellerPopularProduct({
    this.prodId,
    this.prodName,
    this.prodDescription,
    this.prodPrice,
    this.prodImage,
  });

  factory SellerPopularProduct.fromJson(Map<String, dynamic> json) => SellerPopularProduct(
    prodId: json["prod_id"],
    prodName: json["prod_name"],
    prodDescription: json["prod_description"],
    prodPrice: json["prod_price"],
    prodImage: json["prod_image"],
  );

  Map<String, dynamic> toJson() => {
    "prod_id": prodId,
    "prod_name": prodName,
    "prod_description": prodDescription,
    "prod_price": prodPrice,
    "prod_image": prodImage,
  };
}

enum Time {
  THE_40_MIN
}

final timeValues = EnumValues({
  "40min": Time.THE_40_MIN
});

class WeightElement {
  int? id;
  WeightEnum? weight;

  WeightElement({
    this.id,
    this.weight,
  });

  factory WeightElement.fromJson(Map<String, dynamic> json) => WeightElement(
    id: json["id"],
    weight: weightEnumValues.map[json["weight"]],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "weight": weightEnumValues.reverse[weight],
  };
}

enum WeightEnum {
  THE_13_KG,
  THE_15_KG,
  THE_1_KG,
  THE_2_KG,
  THE_5_KG
}

final weightEnumValues = EnumValues({
  "1.3kg": WeightEnum.THE_13_KG,
  "1.5kg": WeightEnum.THE_15_KG,
  "1kg": WeightEnum.THE_1_KG,
  "2kg": WeightEnum.THE_2_KG,
  ".5kg": WeightEnum.THE_5_KG
});

class Filter {
  int? id;
  String? filterType;
  List<FilterList>? filterList;

  Filter({
    this.id,
    this.filterType,
    this.filterList,
  });

  factory Filter.fromJson(Map<String, dynamic> json) => Filter(
    id: json["id"],
    filterType: json["filter_type"],
    filterList: json["filter_list"] == null ? [] : List<FilterList>.from(json["filter_list"].map((x) => FilterList.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "filter_type": filterType,
    "filter_list": filterList == null ? [] : List<dynamic>.from(filterList!.map((x) => x.toJson())),
  };
}

class FilterList {
  int? id;
  String? item;

  FilterList({
    this.id,
    this.item,
  });

  factory FilterList.fromJson(Map<String, dynamic> json) => FilterList(
    id: json["id"],
    item: json["item"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "item": item,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}