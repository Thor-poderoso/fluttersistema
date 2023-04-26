import 'package:flutter/material.dart';
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
                      children: [
                        const Text(
                          "Storage Details",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: defaultPadding),
                        const Chart(),
                        Container(
                          padding: const EdgeInsets.all(defaultPadding),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2, 
                              color: primaryColor.withOpacity(0.15)),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(defaultPadding)),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                
                              )
                            ],
                          ) ,
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

