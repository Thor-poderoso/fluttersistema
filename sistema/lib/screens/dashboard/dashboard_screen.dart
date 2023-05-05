import 'package:sistema/responsive.dart';
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
              children: const [
                Expanded(
                    flex: 5,
                    child: MyFiels(),
                    ),
                SizedBox(width: defaultPadding),
                Expanded(
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
}

