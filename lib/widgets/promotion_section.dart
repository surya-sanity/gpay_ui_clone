import 'package:flutter/material.dart';
import 'package:gpay_ui_clone/dummy_data.dart';

class PromotionSection extends StatelessWidget {
  const PromotionSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Promotions",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, childAspectRatio: 1.0, mainAxisSpacing: 0),
          itemCount: gpayPromotions.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(100)),
                  child: Icon(
                    gpayPromotions[index].actionIcon,
                    color: Colors.blue.shade600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  gpayPromotions[index].actionValue,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 12),
                  maxLines: 1,
                ),
              ],
            );
          },
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: const [
              ListTile(
                leading: Icon(
                  Icons.alternate_email,
                  color: Colors.blue,
                ),
                title: Text("UPI ID",
                    style:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
                subtitle:
                    Text("sanityCodes@amex", style: TextStyle(fontSize: 12)),
                trailing: Icon(Icons.chevron_right_rounded),
              ),
              ListTile(
                leading: Icon(
                  Icons.history,
                  color: Colors.blue,
                ),
                title: Text("Show transaction history",
                    style:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
                trailing: Icon(Icons.chevron_right_rounded),
              ),
              ListTile(
                leading: Icon(
                  Icons.account_balance,
                  color: Colors.blue,
                ),
                title: Text("Check balance",
                    style:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
                trailing: Icon(Icons.chevron_right_rounded),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey[50],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Invite your friends to Google Pay",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Invite friends to Google Pay and get ₹201 when your friend sends their first payment. They get ₹21",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Text(
                    "Copy your code: 2sdwv",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.copy,
                    size: 15,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.shade400,
                    ),
                    borderRadius: BorderRadius.circular(30)),
                child: const Text(
                  "Invite",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
