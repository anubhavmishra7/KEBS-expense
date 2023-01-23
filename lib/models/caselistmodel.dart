// import 'package:flutter/cupertino.dart';

class CustomerCaselist {
  final String name;
  final String? country;

  CustomerCaselist(
      {required this.name, required this.country});

  factory CustomerCaselist.fromJson(Map<String, dynamic> data) {
    final name = data['name'] as String;
    final country = data['country'] as String?;
    return CustomerCaselist(name: name, country: country );
  }

  // Map<String, dynamic> toJson() {
  //   return {
  //     'name': name,
  //     if (country != null) 'country': country,
  //   };
}

//List image = ["assets/images/landing1.png", "assets/images/landing2.png"];
