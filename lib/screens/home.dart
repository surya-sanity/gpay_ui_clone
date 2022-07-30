import 'package:flutter/material.dart';
import 'package:gpay_ui_clone/dummy_data.dart';
import 'package:gpay_ui_clone/widgets/home_appbar.dart';
import 'package:gpay_ui_clone/widgets/pay_actions.dart';
import 'package:gpay_ui_clone/widgets/scroll_handle.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      body: Stack(
        children: [
          const HomeAppBar(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 180, horizontal: 110),
            child: Image.asset(
              "assets/images/googlePay.png",
              fit: BoxFit.contain,
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.75,
            minChildSize: 0.75,
            expand: true,
            snap: true,
            builder: (context, scrollController) {
              return ListView.builder(
                controller: scrollController,
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: const EdgeInsets.all(8),
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
                      ],
                    ),
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}
