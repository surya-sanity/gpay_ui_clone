import 'package:flutter/material.dart';
import 'package:gpay_ui_clone/widgets/bills_sections.dart';
import 'package:gpay_ui_clone/widgets/business_section.dart';
import 'package:gpay_ui_clone/widgets/home_appbar.dart';
import 'package:gpay_ui_clone/widgets/pay_actions.dart';
import 'package:gpay_ui_clone/widgets/people_section.dart';
import 'package:gpay_ui_clone/widgets/promotion_section.dart';
import 'package:gpay_ui_clone/widgets/scroll_handle.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [
            0.6,
            0.7,
          ],
          colors: [Colors.blue.shade500, Colors.white],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            const HomeAppBar(),
            Padding(
              padding: const EdgeInsets.only(top: 230),
              child: Image.asset(
                "assets/images/banner.png",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Image.asset(
                "assets/images/googlePay.png",
                height: 60,
                fit: BoxFit.contain,
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.62,
              minChildSize: 0.62,
              expand: true,
              snap: true,
              builder: (context, scrollController) {
                return ListView.builder(
                  controller: scrollController,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                      child: Column(
                        children: const [
                          ScrollHandle(),
                          PayActions(),
                          PeopleSection(),
                          SizedBox(
                            height: 25,
                          ),
                          BusinessSection(),
                          SizedBox(
                            height: 25,
                          ),
                          BillsSection(),
                          SizedBox(
                            height: 25,
                          ),
                          PromotionSection()
                        ],
                      ),
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
