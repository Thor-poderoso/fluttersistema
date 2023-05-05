import 'package:flutter/material.dart';
import 'package:sistema/models/MyFiles.dart';

import '../../../constants.dart';
import 'file_info_card.dart';

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
              crossAxisCount: 4, 
              crossAxisSpacing: defaultPadding,
              childAspectRatio: 1.4,
              ),
          itemBuilder: (context, index) =>
              FileInfoCard(info: demoMyFiles[index]),
        ),
      ],
    );
  }
}

<<<<<<< HEAD
=======
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
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(defaultPadding * 0.75),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: info.color?.withOpacity(0.1),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: SvgPicture.asset(
                  info.svgSrc!,
                  color: info.color,
                ),
              ),
              const Icon(
                Icons.more_vert,
                color: Colors.white54,
              )
            ],
          ),
          Text(
            info.title!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          ProgressLine(
            color: info.color!,
            percentage: info.percentage!,
          ),
          Row(
            children: [
              Text(
                "${info.numOfFiles} Files", 
                style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Colors.white70 ),
              ),
               Text(
                info.totalStorage!, 
                style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Colors.white70 ),
              ),    
            ],
          ),
        ],
      ),
    );
  }
}

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    super.key,
    this.color = primaryColor,
    required this.percentage,
  });

  final Color color;
  final int percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) => Container(
            width: constraints.maxWidth * (percentage / 100),
            height: 5,
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ],
    );
  }
}
>>>>>>> 45a4c1309048500f4b2412ad2d9773fad2d608da
