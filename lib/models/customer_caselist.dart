// import 'dart:convert';

// CustomerCaseList? customerCaseListFromJson(String str) =>
//     CustomerCaseList.fromJson(json.decode(str));

// String customerCaseListToJson(CustomerCaseList? data) =>
//     json.encode(data!.toJson());

// class CustomerCaseList {
//   CustomerCaseList({
//     this.messType,
//     this.data,
//    // this.image
//   });

//   String? messType;
//   List<Datum?>? data;
//   //Image image;

//   factory CustomerCaseList.fromJson(Map<String, dynamic> json) =>
//       CustomerCaseList(
//         messType: json["messType"],
//         data: json["data"] == null
//             ? []
//             : List<Datum?>.from(json["data"]!.map((x) => Datum.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "messType": messType,
//         "data": data == null
//             ? []
//             : List<dynamic>.from(data!.map((x) => x!.toJson())),
//       };
// }
// // class Image{
// //   Image("assets/images/landing.png")
// // }

// class Datum {
//   Datum({
//     this.customerId,
//     this.customerName,
//     // this.salesUnitName,
//     // this.industryName,
//     // this.accountOwnerOid,
//     // this.accountOwnerName,
//     // this.parentAccount,
//     // this.telephone,
//     // this.telephoneExtension,
//     // this.email,
//     // this.website,
//     // this.taxName,
//     this.country,
//     //this.image
//     // this.state,
//     // this.createdByName,
//     // this.createdOn,
//     // this.salesUnitId,
//     // this.orgName,
//     // this.accountPersonaName,
//     // this.accountPersonaId,
//     // this.accountTypeName,
//     // this.accountTypeId,
//     // this.companyTypeName,
//     // this.companyTypeId,
//     // this.employeeSizeName,
//     // this.employeeSizeId,
//     // this.accountClassificationName,
//     // this.accountClassificationId,
//     // this.oemTypeName,
//     // this.oemType,
//     // this.partnerTypeName,
//     // this.partnerType,
//   });

//   int? customerId;
//   String? customerName;
//   // Name? salesUnitName;
//   // String? industryName;
//   // String? accountOwnerOid;
//   // String? accountOwnerName;
//   // String? parentAccount;
//   // String? telephone;
//   // String? telephoneExtension;
//   // String? email;
//   // String? website;
//   // TaxName? taxName;
//   Country? country;
//   //CustomerImage? image;
//   // String? state;
//   // String? createdByName;
//   // dynamic createdOn;
//   // int? salesUnitId;
//   // Name? orgName;
//   // AccountPersonaName? accountPersonaName;
//   // int? accountPersonaId;
//   // AccountTypeName? accountTypeName;
//   // int? accountTypeId;
//   // CompanyTypeName? companyTypeName;
//   // int? companyTypeId;
//   // EmployeeSizeName? employeeSizeName;
//   // int? employeeSizeId;
//   // AccountClassificationName? accountClassificationName;
//   // int? accountClassificationId;
//   // dynamic oemTypeName;
//   // dynamic oemType;
//   // PartnerTypeName? partnerTypeName;
//   // int? partnerType;

//   factory Datum.fromJson(Map<String, dynamic> json) => Datum(
//         customerId: json["customer_id"],
//         customerName: json["customer_name"],
//         // salesUnitName: json["sales_unit_name"],
//         // industryName: json["industry_name"],
//         // accountOwnerOid: json["account_owner_oid"],
//         // accountOwnerName: json["account_owner_name"],
//         // parentAccount: json["parent_account"],
//         // telephone: json["telephone"],
//         // telephoneExtension: json["telephone_extension"],
//         // email: json["email"],
//         // website: json["website"],
//         // taxName: json["tax_name"],
//         country: json["country"],
//         // state: json["state"],
//         // createdByName: json["created_by_name"],
//         // createdOn: json["created_on"],
//         // salesUnitId: json["sales_unit_id"],
//         // orgName: json["org_name"],
//         // accountPersonaName:
//         //     accountPersonaNameValues!.map[json["account_persona_name"]],
//         // accountPersonaId: json["account_persona_id"],
//         // accountTypeName: json["account_type_name"],
//         // accountTypeId: json["account_type_id"],
//         // companyTypeName: json["company_type_name"],
//         // companyTypeId: json["company_type_id"],
//         // employeeSizeName: json["employee_size_name"],
//         // employeeSizeId: json["employee_size_id"],
//         // accountClassificationName: json["account_classification_name"],
//         // accountClassificationId: json["account_classification_id"],
//         // oemTypeName: json["oem_type_name"],
//         // oemType: json["oem_type"],
//         // partnerTypeName: json["partner_type_name"],
//         // partnerType: json["partner_type"],
//       );

//   Map<String, dynamic> toJson() => {
//         "customer_id": customerId,
//         "customer_name": customerName,
//         // "sales_unit_name": salesUnitName,
//         // "industry_name": industryName,
//         // "account_owner_oid": accountOwnerOid,
//         // "account_owner_name": accountOwnerName,
//         // "parent_account": parentAccount,
//         // "telephone": telephone,
//         // "telephone_extension": telephoneExtension,
//         // "email": email,
//         // "website": website,
//         // "tax_name": taxName,
//         "country": country,
//         // "state": state,
//         // "created_by_name": createdByName,
//         // "created_on": createdOn,
//         // "sales_unit_id": salesUnitId,
//         // "org_name": orgName,
//         // "account_persona_name":
//         //     accountPersonaNameValues.reverse![accountPersonaName],
//         // "account_persona_id": accountPersonaId,
//         // "account_type_name": accountTypeName,
//         // "account_type_id": accountTypeId,
//         // "company_type_name": companyTypeName,
//         // "company_type_id": companyTypeId,
//         // "employee_size_name": employeeSizeName,
//         // "employee_size_id": employeeSizeId,
//         // "account_classification_name": accountClassificationName,
//         // "account_classification_id": accountClassificationId,
//         // "oem_type_name": oemTypeName,
//         // "oem_type": oemType,
//         // "partner_type_name": partnerTypeName,
//         // "partner_type": partnerType,
//       };
// }

// // enum AccountClassificationName { LE, LGB, UGB }

// // final accountClassificationNameValues = EnumValues({
// //   "LE": AccountClassificationName.LE,
// //   "LGB": AccountClassificationName.LGB,
// //   "UGB": AccountClassificationName.UGB
// // });

// // enum AccountPersonaName { CUSTOMER, PARTNER }

// // final accountPersonaNameValues = EnumValues({
// //   "Customer": AccountPersonaName.CUSTOMER,
// //   "Partner": AccountPersonaName.PARTNER
// // });

// // enum AccountTypeName { EAM, NET_NEW }

// // final accountTypeNameValues = EnumValues(
// //     {"EAM": AccountTypeName.EAM, "NET New": AccountTypeName.NET_NEW});

// // enum CompanyTypeName { SUBSIDARY, INDEPENDENT, CONGLOMERATE }

// // final companyTypeNameValues = EnumValues({
// //   "Conglomerate": CompanyTypeName.CONGLOMERATE,
// //   "Independent": CompanyTypeName.INDEPENDENT,
// //   "Subsidary": CompanyTypeName.SUBSIDARY
// // });
// //CustomerImage{"assets/images/landing1.png";}

// enum Country {
//   BAHRAIN,
//   OMAN,
//   SAUDI_ARABIA,
//   KUWAIT,
//   QATAR,
//   COUNTRY_BAHRAIN,
//   UNITED_ARAB_EMIRATES,
//   UNITED_STATES,
//   UNITED_KINGDOM,
//   INDIA,
//   GERMANY,
//   SOUTH_AFRICA,
//   SINGAPORE,
//   KOREA_SOUTH,
//   BELGIUM,
//   NETHERLANDS,
//   CANADA,
//   MALAYSIA,
//   PAKISTAN,
//   LIBERIA,
//   DENMARK,
//   LEBANON,
//   INDONESIA,
//   CHINA,
//   VIETNAM,
//   KENYA,
//   ALGERIA,
//   AUSTRALIA,
//   IRAN,
//   BANGLADESH,
//   NIGER,
//   UKRAINE,
//   IRAQ,
//   TURKEY,
//   MALTA,
//   THAILAND,
//   BELARUS,
//   PHILIPPINES,
//   NORWAY,
//   BRAZIL,
//   SWEDEN,
//   LIBYA,
//   RUSSIAN_FEDERATION,
//   SYRIA,
//   YEMEN,
//   UGANDA,
//   JORDAN,
//   MEXICO,
//   FINLAND,
//   SWITZERLAND,
//   JAPAN,
//   PALESTINE_STATE_OF,
//   BRUNEI_DARUSSALAM,
//   EGYPT,
//   NETHERLANDS_THE,
//   POLAND,
//   LUXEMBOURG,
//   FRANCE,
//   SRI_LANKA,
//   EMPTY,
//   ALBANIA
// }

// final countryValues = EnumValues({
//   "Albania": Country.ALBANIA,
//   "Algeria": Country.ALGERIA,
//   "Australia": Country.AUSTRALIA,
//   "Bahrain": Country.BAHRAIN,
//   "Bangladesh": Country.BANGLADESH,
//   "Belarus": Country.BELARUS,
//   "Belgium": Country.BELGIUM,
//   "Brazil": Country.BRAZIL,
//   "Brunei Darussalam": Country.BRUNEI_DARUSSALAM,
//   "Canada": Country.CANADA,
//   "China": Country.CHINA,
//   "Bahrain ": Country.COUNTRY_BAHRAIN,
//   "Denmark": Country.DENMARK,
//   "Egypt": Country.EGYPT,
//   "": Country.EMPTY,
//   "Finland": Country.FINLAND,
//   "France": Country.FRANCE,
//   "Germany": Country.GERMANY,
//   "India": Country.INDIA,
//   "Indonesia": Country.INDONESIA,
//   "Iran": Country.IRAN,
//   "Iraq": Country.IRAQ,
//   "Japan": Country.JAPAN,
//   "Jordan": Country.JORDAN,
//   "Kenya": Country.KENYA,
//   "Korea South": Country.KOREA_SOUTH,
//   "Kuwait": Country.KUWAIT,
//   "Lebanon": Country.LEBANON,
//   "Liberia": Country.LIBERIA,
//   "Libya": Country.LIBYA,
//   "Luxembourg": Country.LUXEMBOURG,
//   "Malaysia": Country.MALAYSIA,
//   "Malta": Country.MALTA,
//   "Mexico": Country.MEXICO,
//   "Netherlands": Country.NETHERLANDS,
//   "Netherlands The": Country.NETHERLANDS_THE,
//   "Niger": Country.NIGER,
//   "Norway": Country.NORWAY,
//   "Oman": Country.OMAN,
//   "Pakistan": Country.PAKISTAN,
//   "Palestine, State of": Country.PALESTINE_STATE_OF,
//   "Philippines": Country.PHILIPPINES,
//   "Poland": Country.POLAND,
//   "Qatar": Country.QATAR,
//   "Russian Federation": Country.RUSSIAN_FEDERATION,
//   "Saudi Arabia": Country.SAUDI_ARABIA,
//   "Singapore": Country.SINGAPORE,
//   "South Africa": Country.SOUTH_AFRICA,
//   "Sri Lanka": Country.SRI_LANKA,
//   "Sweden": Country.SWEDEN,
//   "Switzerland": Country.SWITZERLAND,
//   "Syria": Country.SYRIA,
//   "Thailand": Country.THAILAND,
//   "Turkey": Country.TURKEY,
//   "Uganda": Country.UGANDA,
//   "Ukraine": Country.UKRAINE,
//   "United Arab Emirates": Country.UNITED_ARAB_EMIRATES,
//   "United Kingdom": Country.UNITED_KINGDOM,
//   "United States": Country.UNITED_STATES,
//   "Vietnam": Country.VIETNAM,
//   "Yemen": Country.YEMEN
// });

// // enum CreatedOnEnum { THE_00000000000000 }

// // final createdOnEnumValues =
// //     EnumValues({"0000-00-00 00:00:00": CreatedOnEnum.THE_00000000000000});

// //   enum EmployeeSizeName {
// //   THE_5011000_EMPLOYEES,
// //   THE_210_EMPLOYEES,
// //   THE_201500_EMPLOYEES,
// //   THE_10015000_EMPLOYEES,
// //   THE_500110000_EMPLOYEES,
// //   THE_51200_EMPLOYEES,
// //   THE_10000_EMPLOYEES,
// //   THE_01_EMPLOYEES,
// //   THE_1150_EMPLOYEES
// // }

// // final employeeSizeNameValues = EnumValues({
// //   "0-1 Employees": EmployeeSizeName.THE_01_EMPLOYEES,
// //   "10000+ Employees": EmployeeSizeName.THE_10000_EMPLOYEES,
// //   "1001-5000 Employees": EmployeeSizeName.THE_10015000_EMPLOYEES,
// //   "11-50 Employees": EmployeeSizeName.THE_1150_EMPLOYEES,
// //   "201-500 Employees": EmployeeSizeName.THE_201500_EMPLOYEES,
// //   "2-10 Employees": EmployeeSizeName.THE_210_EMPLOYEES,
// //   "5001-10,000 Employees": EmployeeSizeName.THE_500110000_EMPLOYEES,
// //   "501-1000 Employees": EmployeeSizeName.THE_5011000_EMPLOYEES,
// //   "51-200 Employees": EmployeeSizeName.THE_51200_EMPLOYEES
// // });

// // enum Name {
// //   BAHRAIN_NET_NEW_SO,
// //   OMAN_NET_NEW_SO,
// //   KSA_ENR_NET_NEW_SO,
// //   KSA_ENR_EAM_SO,
// //   KUWAIT_EAM_SO,
// //   QATAR_EAM_SO,
// //   KSA_ARAMCO_SO,
// //   KSA_SERVICES_NET_NEW_SO,
// //   KSA_SERVICES_EAM_SO,
// //   KT_KSA_EAM,
// //   KSA_PSF_EAM_SO,
// //   KSA_PSF_NET_NEW_SO,
// //   BAHRAIN_EAM_SO,
// //   QATAR_NET_NEW_SO,
// //   KUWAIT_NET_NEW_SO,
// //   OMAN_EAM_SO,
// //   UAE_EAM_SO,
// //   UAE_NET_NEW_SO,
// //   US_PRO_SERV_EC_O_EAM_SO,
// //   UK_EAM_SO,
// //   DIGITAL_SERVICES_EAM_SO,
// //   US_DEN_EAM_SO,
// //   UK_NET_NEW_SO,
// //   INDIA_SALES,
// //   ROW_US_SO,
// //   KSA_MANUFACTURING_NET_NEW_SO,
// //   KSA_MINISTRY_EAM_SO,
// //   KSA_MANUFACTURING_EAM_SO,
// //   WEST,
// //   MENA_NORTH,
// //   KSA_AMS_NET_NEW_SALES,
// //   US_SALES,
// //   US_STRATEGIC_ALLIANCES_H1_B_EAM_SO,
// //   KSA_MINISTRY_NET_NEW_SO,
// //   KSA_SERVICES_NET_NEW_SALES,
// //   KSA_MANUFACTURING_NET_NEW_SALES,
// //   WEST_US_SALES,
// //   KSA_ENR,
// //   OMAN,
// //   US_DEN_NET_NEW_SO,
// //   KSA_SALES_S0,
// //   US_PRO_SERV_EC_O_NET_NEW_SO,
// //   DIGITAL_SERVICES_NET_NEW_SO,
// //   US_PARTNER_STRATEGIC_EAM,
// //   INDIA_SALES_1,
// //   KEBS_SALES_MARKETING,
// //   KUWAIT_SALES,
// //   UAE_SALES
// // }

// // final nameValues = EnumValues({
// //   "Bahrain - EAM (SO)": Name.BAHRAIN_EAM_SO,
// //   "Bahrain - Net New (SO)": Name.BAHRAIN_NET_NEW_SO,
// //   "Digital Services - EAM (SO)": Name.DIGITAL_SERVICES_EAM_SO,
// //   "Digital Services - Net New (SO)": Name.DIGITAL_SERVICES_NET_NEW_SO,
// //   "India Sales": Name.INDIA_SALES,
// //   "India Sales 1": Name.INDIA_SALES_1,
// //   "KEBS Sales Marketing": Name.KEBS_SALES_MARKETING,
// //   "KSA - AMS Net New - Sales": Name.KSA_AMS_NET_NEW_SALES,
// //   "KSA - Aramco (SO)": Name.KSA_ARAMCO_SO,
// //   "KSA - ENR": Name.KSA_ENR,
// //   "KSA - ENR EAM (SO)": Name.KSA_ENR_EAM_SO,
// //   "KSA - ENR Net new (SO)": Name.KSA_ENR_NET_NEW_SO,
// //   "KSA - Manufacturing EAM (SO)": Name.KSA_MANUFACTURING_EAM_SO,
// //   "KSA - Manufacturing Net New - Sales": Name.KSA_MANUFACTURING_NET_NEW_SALES,
// //   "KSA - Manufacturing Net New (SO)": Name.KSA_MANUFACTURING_NET_NEW_SO,
// //   "KSA - Ministry EAM (SO)": Name.KSA_MINISTRY_EAM_SO,
// //   "KSA - Ministry Net New (SO)": Name.KSA_MINISTRY_NET_NEW_SO,
// //   "KSA - PSF EAM (SO)": Name.KSA_PSF_EAM_SO,
// //   "KSA - PSF Net New (SO)": Name.KSA_PSF_NET_NEW_SO,
// //   "KSA SALES (S0)": Name.KSA_SALES_S0,
// //   "KSA - Services EAM (SO)": Name.KSA_SERVICES_EAM_SO,
// //   "KSA - Services Net New - Sales": Name.KSA_SERVICES_NET_NEW_SALES,
// //   "KSA - Services Net New (SO)": Name.KSA_SERVICES_NET_NEW_SO,
// //   "KT KSA - EAM": Name.KT_KSA_EAM,
// //   "Kuwait - EAM (SO)": Name.KUWAIT_EAM_SO,
// //   "Kuwait - Net New (SO)": Name.KUWAIT_NET_NEW_SO,
// //   "Kuwait Sales": Name.KUWAIT_SALES,
// //   "MENA North": Name.MENA_NORTH,
// //   "Oman": Name.OMAN,
// //   "Oman - EAM (SO)": Name.OMAN_EAM_SO,
// //   "Oman - Net New (SO)": Name.OMAN_NET_NEW_SO,
// //   "Qatar - EAM (SO)": Name.QATAR_EAM_SO,
// //   "Qatar - Net New (SO)": Name.QATAR_NET_NEW_SO,
// //   "ROW - US (SO)": Name.ROW_US_SO,
// //   "UAE - EAM (SO)": Name.UAE_EAM_SO,
// //   "UAE - Net New (SO)": Name.UAE_NET_NEW_SO,
// //   "UAE Sales": Name.UAE_SALES,
// //   "UK - EAM (SO)": Name.UK_EAM_SO,
// //   "UK - Net new (SO)": Name.UK_NET_NEW_SO,
// //   "US - DEN - EAM (SO)": Name.US_DEN_EAM_SO,
// //   "US - DEN - Net New (SO)": Name.US_DEN_NET_NEW_SO,
// //   "US - Partner & Strategic - EAM": Name.US_PARTNER_STRATEGIC_EAM,
// //   "US -ProServ, EC&O - EAM (SO)": Name.US_PRO_SERV_EC_O_EAM_SO,
// //   "US -ProServ, EC&O - Net New (SO)": Name.US_PRO_SERV_EC_O_NET_NEW_SO,
// //   "US Sales": Name.US_SALES,
// //   "US - Strategic Alliances & H1B - EAM (SO)":
// //       Name.US_STRATEGIC_ALLIANCES_H1_B_EAM_SO,
// //   "WEST": Name.WEST,
// //   "West US Sales": Name.WEST_US_SALES
// // });

// // enum PartnerTypeName { SAP_PARTNERS, OTHERS }

// // final partnerTypeNameValues = EnumValues({
// //   "Others": PartnerTypeName.OTHERS,
// //   "SAP partners": PartnerTypeName.SAP_PARTNERS
// // });

// // enum TaxName { NO_TAX, VAT, IGST }

// // final taxNameValues = EnumValues(
// //     {"IGST": TaxName.IGST, "No Tax": TaxName.NO_TAX, "VAT": TaxName.VAT});

// class EnumValues<T> {
//   Map<String, T> map;
//   Map<T, String>? reverseMap;

//   EnumValues(this.map);

//   Map<T, String>? get reverse {
//     reverseMap ??= map.map((k, v) => MapEntry(v, k));
//     return reverseMap;
//   }
// }

// // To parse this JSON data, do
// //
// //     final customerCaseList = customerCaseListFromJson(jsonString);