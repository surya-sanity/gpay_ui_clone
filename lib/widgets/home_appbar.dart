import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(children: const [
          Expanded(
            child: Material(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              elevation: 2,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black54,
                      size: 24,
                    ),
                    hintText: "Pay by name or phone number"),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: CircleAvatar(
              radius: 24,
              foregroundImage: NetworkImage(
                "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
              ),
            ),
          )
        ]),
      ),
    );
  }
}
