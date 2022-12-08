import 'package:json_annotation/json_annotation.dart';

part 'responses.g.dart';

//flutter packages pub run build_runner build --delete-conflicting-outputs
@JsonSerializable(explicitToJson: true)
class BaseResponse {
  @JsonKey(name: 'status')
  int? status;
  @JsonKey(name: 'message')
  String? message;
}

@JsonSerializable(explicitToJson: true)
class CustomerResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'numOfNotifications')
  int? numOfNotifications;
  @JsonKey(name: 'image')
  String? image;
  CustomerResponse(this.id, this.name, this.numOfNotifications, this.image);
}

@JsonSerializable(explicitToJson: true)
class ContentResponse {
  @JsonKey(name: 'phone')
  String? phone;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'link')
  String? link;
  ContentResponse(this.phone, this.email, this.link);
}

@JsonSerializable(explicitToJson: true)
class AuthResponse extends BaseResponse {
  @JsonKey(name: 'customer')
  CustomerResponse? customer;
  @JsonKey(name: 'contacts')
  ContentResponse? contacts;

  AuthResponse(this.customer, this.contacts);

  // from json
  AuthResponse.fromJson(Map<String, dynamic> json) {
    customer!.id = json['id'];
  }

  // to json

}
