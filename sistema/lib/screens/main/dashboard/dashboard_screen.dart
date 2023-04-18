import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sistema/constants.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  static const dirIcon = "../../assets/icons";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Dashboard",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Spacer(),
                const Expanded(
                    child: TextField(
                  decoration:
                      InputDecoration(
                        fillColor: secondaryColor, 
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none, 
                          borderRadius: BorderRadius.all(Radius.circular(10)), 
                        ),
                        suffixIcon: Container(
                          padding: EdgeInsets.all(defaultPadding * 0.75),
                          decoration: BoxDecoration(
                            color: primaryColor,
                          ),
                          child: SvgPicture.asset("$dirIcon/Search.svg"),
                        ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
