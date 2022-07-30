import 'package:flutter/material.dart';

class GpayActions {
  final String actionValue;
  final IconData actionIcon;

  GpayActions({required this.actionIcon, required this.actionValue});
}

class GpayPromotions {
  final String actionValue;
  final IconData actionIcon;

  GpayPromotions({required this.actionIcon, required this.actionValue});
}

class PeopleSectionModel {
  final String name;
  final String imageUrl;

  PeopleSectionModel({required this.name, required this.imageUrl});
}

class BusinessSectionModel {
  final String name;
  final String imageUrl;

  BusinessSectionModel({required this.name, required this.imageUrl});
}

List<GpayActions> gpayActions = [
  GpayActions(
      actionIcon: Icons.qr_code_scanner, actionValue: "Scan any QR code"),
  GpayActions(
      actionIcon: Icons.perm_contact_calendar, actionValue: "Pay contacts"),
  GpayActions(
      actionIcon: Icons.send_to_mobile, actionValue: "Pay phone number"),
  GpayActions(actionIcon: Icons.account_balance, actionValue: "Bank transfer"),
  GpayActions(actionIcon: Icons.alternate_email, actionValue: "Pay to UPI ID"),
  GpayActions(actionIcon: Icons.person_outlined, actionValue: "Self transfer"),
  GpayActions(actionIcon: Icons.receipt_long, actionValue: "Pay bills"),
  GpayActions(
      actionIcon: Icons.charging_station, actionValue: "Mobile recharge"),
];

List<PeopleSectionModel> peopleData = [
  PeopleSectionModel(imageUrl: "https://picsum.photos/200", name: "Tyrion"),
  PeopleSectionModel(imageUrl: "https://picsum.photos/200", name: "Cersei"),
  PeopleSectionModel(imageUrl: "https://picsum.photos/200", name: "Mountain"),
  PeopleSectionModel(imageUrl: "https://picsum.photos/200", name: "Daenerys"),
  PeopleSectionModel(imageUrl: "https://picsum.photos/200", name: "Sansa"),
  PeopleSectionModel(imageUrl: "https://picsum.photos/200", name: "Jon Snow"),
  PeopleSectionModel(imageUrl: "https://picsum.photos/200", name: "Arya"),
  PeopleSectionModel(imageUrl: "https://picsum.photos/200", name: "Khal"),
  PeopleSectionModel(imageUrl: "https://picsum.photos/200", name: "Jaime"),
  PeopleSectionModel(imageUrl: "https://picsum.photos/200", name: "Missandei"),
];

List<BusinessSectionModel> businessData = [
  BusinessSectionModel(
      imageUrl: "https://picsum.photos/200", name: "Jio Mobility"),
  BusinessSectionModel(imageUrl: "https://picsum.photos/200", name: "Flipkart"),
  BusinessSectionModel(
      imageUrl: "https://picsum.photos/200", name: "Sams Cakes"),
];

List<GpayPromotions> gpayPromotions = [
  GpayPromotions(actionIcon: Icons.redeem, actionValue: "Rewards"),
  GpayPromotions(actionIcon: Icons.loyalty, actionValue: "Offers"),
  GpayPromotions(actionIcon: Icons.offline_share, actionValue: "Referrals"),
  GpayPromotions(actionIcon: Icons.home, actionValue: "Indi-Home"),
];
