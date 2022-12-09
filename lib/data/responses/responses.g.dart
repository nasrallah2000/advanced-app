// // GENERATED CODE - DO NOT MODIFY BY HAND

// part of 'responses.dart';

// // **************************************************************************
// // JsonSerializableGenerator
// // **************************************************************************

// BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) => BaseResponse()
//   ..status = json['status'] as int?
//   ..message = json['message'] as String?;

// Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
//     <String, dynamic>{
//       'status': instance.status,
//       'message': instance.message,
//     };

// CustomerResponse _$CustomerResponseFromJson(Map<String, dynamic> json) =>
//     CustomerResponse(
//       json['id'] as int?,
//       json['name'] as String?,
//       json['numOfNotifications'] as int?,
//       json['image'] as String?,
//     );

// Map<String, dynamic> _$CustomerResponseToJson(CustomerResponse instance) =>
//     <String, dynamic>{
//       'id': instance.id,
//       'name': instance.name,
//       'numOfNotifications': instance.numOfNotifications,
//       'image': instance.image,
//     };

// ContentResponse _$ContentResponseFromJson(Map<String, dynamic> json) =>
//     ContentResponse(
//       json['phone'] as String?,
//       json['email'] as String?,
//       json['link'] as String?,
//     );

// Map<String, dynamic> _$ContentResponseToJson(ContentResponse instance) =>
//     <String, dynamic>{
//       'phone': instance.phone,
//       'email': instance.email,
//       'link': instance.link,
//     };

// AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) => AuthResponse(
//       json['customer'] == null
//           ? null
//           : CustomerResponse.fromJson(json['customer'] as Map<String, dynamic>),
//       json['contacts'] == null
//           ? null
//           : ContentResponse.fromJson(json['contacts'] as Map<String, dynamic>),
//     )
//       ..status = json['status'] as int?
//       ..message = json['message'] as String?;

// Map<String, dynamic> _$AuthResponseToJson(AuthResponse instance) =>
//     <String, dynamic>{
//       'status': instance.status,
//       'message': instance.message,
//       'customer': instance.customer?.toJson(),
//       'contacts': instance.contacts?.toJson(),
//     };
