import "package:flutter/material.dart";

import "../../../../constants.dart";
import "../storage_info_card.dart";
import "chart.dart";


  

class StarageDetails extends StatelessWidget {
  const StarageDetails({
    super.key, required String dirIcon
  });
  

static const dirIcon = "../../../assets/icons";
  static const dir = "../../../assets/images";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
            svgSrc: "$dirIcon/Media.svg",
            title: "Media Files",
            amountOFiles: "15.3GB",
            numOfFiles: 1328,
          ),
           StorageInfoCard(
            dirIcon: dirIcon,
            svgSrc: "$dirIcon/Folder.svg",
            title: "Other Files",
            amountOFiles: "1.3GB",
            numOfFiles: 1328,
          ),
           StorageInfoCard(
            dirIcon: dirIcon,
            svgSrc: "$dirIcon/Unknown.svg",
            title: "Unknown",
            amountOFiles: "1.3GB",
            numOfFiles: 1328,
          ),
        ],
      ),
    );
  }
}

