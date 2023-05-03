import 'package:flutter/material.dart';
import 'package:sistema/models/MyFiles.dart';

import '../../../constants.dart';

class MyFiels extends StatelessWidget {
  const MyFiels({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Files",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding * 1.5, vertical: defaultPadding),
              ),
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text("Add New"),
            ),
          ],
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: demoMyFiles.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, crossAxisSpacing: defaultPadding),
          itemBuilder: (context, index) => 
          FileInfoCard(info: demoMyFiles[index]),
        ),
      ],
    );
  }
}

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({
    super.key, 
    required this.info,
  });

  final CloudStorageInfo info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(children: [
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: info.color?.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
            ),
          ],
        )
      ]),
    );
  }
}
