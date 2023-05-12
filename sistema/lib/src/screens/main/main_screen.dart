import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sistema/responsive.dart';

import '../../controllers/MenuAppController.dart';
import '../dashboard/dashboard_screen.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static const dir = "../../assets/images";
  static const dirIcon = "../../assets/icons";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: context.read<MenuAppController>().scaffoldKey,
        drawer: const SideMenu(dir: dir, dirIcon: dirIcon,),
        body: SafeArea(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              const Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(dir: dir, dirIcon: dirIcon),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: Container(
                key: key,
                child: const DashboardScreen(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
