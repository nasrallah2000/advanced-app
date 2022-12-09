class AuthModel {
  int? status;
  String? message;
  Customer? customer;
  Contacts? contacts;

  AuthModel({
    this.status,
    this.message,
    this.customer,
    this.contacts,
  });

  AuthModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    customer = json['customer'] != null ? Customer.fromJson(json['customer']) : null;
    contacts = json['contacts'] != null ? Contacts.fromJson(json['contacts']) : null;
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'message': message,
      'customer': customer!.toJson(),
      'contacts': contacts!.toJson(),
    };
  }
}

class Customer {
  String? id;
  String? name;
  int? numOfNotifications;
  String? image;

  Customer({this.id, this.name, this.numOfNotifications, this.image});

  Customer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    numOfNotifications = json['numOfNotifications'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['numOfNotifications'] = numOfNotifications;
    data['image'] = image;
    return data;
  }
}

class Contacts {
  String? phone;
  String? email;
  String? link;

  Contacts({this.phone, this.email, this.link});

  Contacts.fromJson(Map<String, dynamic> json) {
    phone = json['phone'];
    email = json['email'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['phone'] = phone;
    data['email'] = email;
    data['link'] = link;
    return data;
  }
}
