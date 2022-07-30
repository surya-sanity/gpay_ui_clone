import 'package:flutter/material.dart';
import 'package:gpay_ui_clone/dummy_data.dart';

class BillsSection extends StatelessWidget {
  const BillsSection({
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
            "Bills, recharges and more",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(children: [
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.blue[50],
                ),
                child: Icon(
                  Icons.fact_check_outlined,
                  size: 30,
                  color: Colors.blue[600],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text("All your bills are paid and up to date")
            ]),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ("Also try adding").toUpperCase(),
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 10),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.smartphone_rounded,
                            size: 30,
                            color: Colors.blue[600],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Mobile \n Recharge",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.tv,
                            size: 30,
                            color: Colors.blue[600],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Dth / Cable\n Recharge",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 30,
                            color: Colors.blue[600],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Pay \n Electricity",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
