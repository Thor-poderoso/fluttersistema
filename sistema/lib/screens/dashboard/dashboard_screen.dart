import 'package:flutter_svg/flutter_svg.dart';
import 'package:sistema/models/RecenFile.dart';
import 'package:flutter/material.dart';
import 'package:sistema/constants.dart';
import 'components/header.dart';
import 'components/my_fiels.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  static const dirIcon = "../../../assets/icons";
  static const dir = "../../../assets/images";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(dirIcon: dirIcon, dir: dir),
            const SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      const MyFiels(),
                      const SizedBox(
                        height: defaultPadding,
                      ),
                      Container(
                        padding: const EdgeInsets.all(defaultPadding),
                        decoration: const BoxDecoration(
                            color: secondaryColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Recent Files",
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: DataTable(
                                  horizontalMargin: 0,
                                  columnSpacing: defaultPadding,
                                  columns: const [
                                    DataColumn(
                                      label: Text("File Name"),
                                    ),
                                    DataColumn(
                                      label: Text("Date"),
                                    ),
                                    DataColumn(
                                      label: Text("Size"),
                                    ),
                                  ],
                                  rows: List.generate(
                                    demoRecentFiles.length,
                                    (index) => recentFileDataRow(
                                        demoRecentFiles[index]),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: defaultPadding),
                const Expanded(
                  flex: 2,
                  child: StarageDetails(dirIcon: dirIcon),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  DataRow recentFileDataRow(RecentFile fileInfo) {
    return DataRow(
      cells: [
        DataCell(
          Row(
            children: [
              SvgPicture.asset(
                fileInfo.icon!,
                height: 30,
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Text(fileInfo.title!),
              ),
            ],
          ),
        ),
        DataCell(Text(fileInfo.date!)),
        DataCell(Text(fileInfo.size!)),
      ],
    );
  }
}
