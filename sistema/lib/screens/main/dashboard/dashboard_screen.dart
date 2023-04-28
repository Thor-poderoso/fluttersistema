import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sistema/constants.dart';
import 'package:fl_chart/fl_chart.dart';

import 'components/chart.dart';
import 'components/header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  static const dirIcon = "../../assets/icons";
  static const dir = "../../assets/images";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(dirIcon: dirIcon, dir: dir),
            const SizedBox(height: defaultPadding),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    height: 500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: defaultPadding),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(defaultPadding),
                    height: 500,
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: const [
                        Text(
                          "Storage Details",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: defaultPadding),
                        Chart(),
                        StorageInfoCard(
                          dirIcon: dirIcon,
                          svgSrc: "$dirIcon/Documents.svg",
                          title: "Documents Files",
                          amountOFiles: "1.3GB",
                          numOfFiles: 1328,
                        ),
                         StorageInfoCard(
                          dirIcon: dirIcon,
                          svgSrc: "$dirIcon/Documents.svg",
                          title: "Documents Files",
                          amountOFiles: "1.3GB",
                          numOfFiles: 1328,
                        ),
                        StorageInfoCard(
                          dirIcon: dirIcon,
                          svgSrc: "$dirIcon/Documents.svg",
                          title: "Documents Files",
                          amountOFiles: "1.3GB",
                          numOfFiles: 1328,
                        ),
                        StorageInfoCard(
                          dirIcon: dirIcon,
                          svgSrc: "$dirIcon/Documents.svg",
                          title: "Documents Files",
                          amountOFiles: "1.3GB",
                          numOfFiles: 1328,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard({
    super.key,
    required this.dirIcon,
    required this.title,
    required this.svgSrc,
    required this.amountOFiles,
    required this.numOfFiles,
  });

  final String title, svgSrc, amountOFiles;
  final int numOfFiles;
  final String dirIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: primaryColor.withOpacity(0.15)),
        borderRadius: const BorderRadius.all(Radius.circular(defaultPadding)),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset("SvgSrc"),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "$numOfFiles Files",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
          Text(amountOFiles)
        ],
      ),
    );
  }
}
