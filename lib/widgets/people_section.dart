import 'package:flutter/material.dart';
import 'package:gpay_ui_clone/dummy_data.dart';

class PeopleSection extends StatelessWidget {
  const PeopleSection({
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
            "People",
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
          itemCount: peopleData.length,
          itemBuilder: (context, index) {
            return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 27,
                    foregroundImage: NetworkImage(
                        "https://picsum.photos/id/${index * 5}/200/300"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    peopleData[index].name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 12),
                    maxLines: 1,
                  )
                ]);
          },
        ),
      ],
    );
  }
}
