import 'package:flutter/material.dart';
import 'package:gpay_ui_clone/dummy_data.dart';

class BusinessSection extends StatelessWidget {
  const BusinessSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Businesses",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30),
                    ),
                    color: Colors.blue[50]),
                child: Row(
                  children: [
                    Icon(
                      Icons.local_mall_outlined,
                      color: Colors.blue[600],
                      size: 20,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Explore",
                      style: TextStyle(color: Colors.blue[600], fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
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
          itemCount: businessData.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 27,
                  foregroundImage: NetworkImage(
                      "https://picsum.photos/id/${index * 9}/200/300"),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  businessData[index].name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 12),
                  maxLines: 1,
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
