class ScratchCardModel {
  String? status;
  String? type;
  Data? data;

  ScratchCardModel({this.status, this.type, this.data});

  ScratchCardModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    type = json['type'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['type'] = type;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<CashbackService>? cashbackService;
  List<Cashback>? cashback;
  List<ThirdPartyCoupon>? thirdPartyCoupon;

  Data({this.cashbackService, this.cashback, this.thirdPartyCoupon});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['cashbackService'] != null) {
      cashbackService = <CashbackService>[];
      json['cashbackService'].forEach((v) {
        cashbackService!.add(CashbackService.fromJson(v));
      });
    }
    if (json['cashback'] != null) {
      cashback = <Cashback>[];
      json['cashback'].forEach((v) {
        cashback!.add(Cashback.fromJson(v));
      });
    }
    if (json['thirdPartyCoupon'] != null) {
      thirdPartyCoupon = <ThirdPartyCoupon>[];
      json['thirdPartyCoupon'].forEach((v) {
        thirdPartyCoupon!.add(ThirdPartyCoupon.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (cashbackService != null) {
      data['cashbackService'] =
          cashbackService!.map((v) => v.toJson()).toList();
    }
    if (cashback != null) {
      data['cashback'] = cashback!.map((v) => v.toJson()).toList();
    }
    if (thirdPartyCoupon != null) {
      data['thirdPartyCoupon'] =
          thirdPartyCoupon!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CashbackService {
  int? id;
  String? name;
  String? slug;
  String? description;
  String? mobileLongDescription;
  String? mobileLongDescription2;
  String? mobileLongDescription3;
  String? mobileLongDescription4;
  String? longDescription;
  int? price;
  int? time;
  String? sort;
  String? timeType;
  int? discount;
  String? discountType;
  int? mainCategoryId;
  int? categoryId;
  String? subCategoryId;
  int? packagesId;
  int? locationId;
  List<String>? image;
  String? defaultImage;
  String? status;
  String? altImage;
  String? preferedService;
  String? locationCity;
  int? homePage;
  String? seoTitle;
  String? seoDesc;
  String? seoKey;
  String? createdAt;
  String? updatedAt;
  String? ratingPer;
  int? ratingPop;
  String? inventoryId;
  String? productUsage;
  String? scratched;
  int? cashbackId;
  String? type;
  String? serviceImageUrl;
  String? serviceDetailUrl;
  int? discountedPrice;
  Category? category;

  CashbackService(
      {this.id,
      this.name,
      this.slug,
      this.description,
      this.mobileLongDescription,
      this.mobileLongDescription2,
      this.mobileLongDescription3,
      this.mobileLongDescription4,
      this.longDescription,
      this.price,
      this.time,
      this.sort,
      this.timeType,
      this.discount,
      this.discountType,
      this.mainCategoryId,
      this.categoryId,
      this.subCategoryId,
      this.packagesId,
      this.locationId,
      this.image,
      this.defaultImage,
      this.status,
      this.altImage,
      this.preferedService,
      this.locationCity,
      this.homePage,
      this.seoTitle,
      this.seoDesc,
      this.seoKey,
      this.createdAt,
      this.updatedAt,
      this.ratingPer,
      this.ratingPop,
      this.inventoryId,
      this.productUsage,
      this.scratched,
      this.cashbackId,
      this.type,
      this.serviceImageUrl,
      this.serviceDetailUrl,
      this.discountedPrice,
      this.category});

  CashbackService.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    description = json['description'];
    mobileLongDescription = json['mobile_long_description'];
    mobileLongDescription2 = json['mobile_long_description2'];
    mobileLongDescription3 = json['mobile_long_description3'];
    mobileLongDescription4 = json['mobile_long_description4'];
    longDescription = json['long_description'];
    price = json['price'];
    time = json['time'];
    sort = json['sort'];
    timeType = json['time_type'];
    discount = json['discount'];
    discountType = json['discount_type'];
    mainCategoryId = json['main_category_id'];
    categoryId = json['category_id'];
    subCategoryId = json['sub_category_id'];
    packagesId = json['packages_id'];
    locationId = json['location_id'];
    image = json['image'].cast<String>();
    defaultImage = json['default_image'];
    status = json['status'];
    altImage = json['altImage'];
    preferedService = json['prefered_service'];
    locationCity = json['location_city'];
    homePage = json['home_page'];
    seoTitle = json['seo_title'];
    seoDesc = json['seo_desc'];
    seoKey = json['seo_key'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    ratingPer = json['rating_per'];
    ratingPop = json['rating_pop'];
    inventoryId = json['inventory_id'];
    productUsage = json['product_usage'];
    scratched = json['scratched'];
    cashbackId = json['cashbackId'];
    type = json['type'];
    serviceImageUrl = json['service_image_url'];
    serviceDetailUrl = json['service_detail_url'];
    discountedPrice = json['discounted_price'];
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['slug'] = slug;
    data['description'] = description;
    data['mobile_long_description'] = mobileLongDescription;
    data['mobile_long_description2'] = mobileLongDescription2;
    data['mobile_long_description3'] = mobileLongDescription3;
    data['mobile_long_description4'] = mobileLongDescription4;
    data['long_description'] = longDescription;
    data['price'] = price;
    data['time'] = time;
    data['sort'] = sort;
    data['time_type'] = timeType;
    data['discount'] = discount;
    data['discount_type'] = discountType;
    data['main_category_id'] = mainCategoryId;
    data['category_id'] = categoryId;
    data['sub_category_id'] = subCategoryId;
    data['packages_id'] = packagesId;
    data['location_id'] = locationId;
    data['image'] = image;
    data['default_image'] = defaultImage;
    data['status'] = status;
    data['altImage'] = altImage;
    data['prefered_service'] = preferedService;
    data['location_city'] = locationCity;
    data['home_page'] = homePage;
    data['seo_title'] = seoTitle;
    data['seo_desc'] = seoDesc;
    data['seo_key'] = seoKey;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['rating_per'] = ratingPer;
    data['rating_pop'] = ratingPop;
    data['inventory_id'] = inventoryId;
    data['product_usage'] = productUsage;
    data['scratched'] = scratched;
    data['cashbackId'] = cashbackId;
    data['type'] = type;
    data['service_image_url'] = serviceImageUrl;
    data['service_detail_url'] = serviceDetailUrl;
    data['discounted_price'] = discountedPrice;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    return data;
  }
}

class Category {
  int? id;
  String? mainCategoryId;
  String? name;
  String? slug;
  String? image;
  String? status;
  String? sortOrder;
  String? createdAt;
  String? updatedAt;
  String? ratingPer;
  int? ratingPop;
  String? categoryImageUrl;

  Category(
      {this.id,
      this.mainCategoryId,
      this.name,
      this.slug,
      this.image,
      this.status,
      this.sortOrder,
      this.createdAt,
      this.updatedAt,
      this.ratingPer,
      this.ratingPop,
      this.categoryImageUrl});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    mainCategoryId = json['main_category_id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
    status = json['status'];
    sortOrder = json['sort_order'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    ratingPer = json['rating_per'];
    ratingPop = json['rating_pop'];
    categoryImageUrl = json['category_image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['main_category_id'] = mainCategoryId;
    data['name'] = name;
    data['slug'] = slug;
    data['image'] = image;
    data['status'] = status;
    data['sort_order'] = sortOrder;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['rating_per'] = ratingPer;
    data['rating_pop'] = ratingPop;
    data['category_image_url'] = categoryImageUrl;
    return data;
  }
}

class Cashback {
  int? cashbackId;
  String? amount;
  String? unit;
  String? scratched;
  String? type;

  Cashback(
      {this.cashbackId, this.amount, this.unit, this.scratched, this.type});

  Cashback.fromJson(Map<String, dynamic> json) {
    cashbackId = json['cashbackId'];
    amount = json['amount'];
    unit = json['unit'];
    scratched = json['scratched'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cashbackId'] = cashbackId;
    data['amount'] = amount;
    data['unit'] = unit;
    data['scratched'] = scratched;
    data['type'] = type;
    return data;
  }
}

class ThirdPartyCoupon {
  int? id;
  String? title;
  String? startDateTime;
  String? endDateTime;
  int? usesLimit;
  int? usedTime;
  int? amount;
  int? percent;
  int? minimumPurchaseAmount;
  String? days;
  String? status;
  String? description;
  int? newUsers;
  int? visibility;
  String? createdAt;
  String? updatedAt;
  int? cashbackId;
  String? cashbackName;
  String? scratched;
  String? type;

  ThirdPartyCoupon(
      {this.id,
      this.title,
      this.startDateTime,
      this.endDateTime,
      this.usesLimit,
      this.usedTime,
      this.amount,
      this.percent,
      this.minimumPurchaseAmount,
      this.days,
      this.status,
      this.description,
      this.newUsers,
      this.visibility,
      this.createdAt,
      this.updatedAt,
      this.cashbackId,
      this.cashbackName,
      this.scratched,
      this.type});

  ThirdPartyCoupon.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    startDateTime = json['start_date_time'];
    endDateTime = json['end_date_time'];
    usesLimit = json['uses_limit'];
    usedTime = json['used_time'];
    amount = json['amount'];
    percent = json['percent'];
    minimumPurchaseAmount = json['minimum_purchase_amount'];
    days = json['days'];
    status = json['status'];
    description = json['description'];
    newUsers = json['new_users'];
    visibility = json['visibility'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    cashbackId = json['cashbackId'];
    cashbackName = json['cashbackName'];
    scratched = json['scratched'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['start_date_time'] = startDateTime;
    data['end_date_time'] = endDateTime;
    data['uses_limit'] = usesLimit;
    data['used_time'] = usedTime;
    data['amount'] = amount;
    data['percent'] = percent;
    data['minimum_purchase_amount'] = minimumPurchaseAmount;
    data['days'] = days;
    data['status'] = status;
    data['description'] = description;
    data['new_users'] = newUsers;
    data['visibility'] = visibility;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['cashbackId'] = cashbackId;
    data['cashbackName'] = cashbackName;
    data['scratched'] = scratched;
    data['type'] = type;
    return data;
  }
}
