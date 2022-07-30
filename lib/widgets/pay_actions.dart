import 'package:flutter/material.dart';
import 'package:gpay_ui_clone/dummy_data.dart';

class PayActions extends StatelessWidget {
  const PayActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(15),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, childAspectRatio: 1.0, mainAxisSpacing: 3),
      itemCount: gpayActions.length,
      itemBuilder: (context, index) {
        return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                gpayActions[index].actionIcon,
                color: Colors.black87,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                gpayActions[index].actionValue,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 12),
                maxLines: 1,
              )
            ]);
      },
    );
  }
}
