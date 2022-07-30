import 'package:flutter/material.dart';

class GpayActions {
  final String actionValue;
  final IconData actionIcon;

  GpayActions({required this.actionIcon, required this.actionValue});
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
