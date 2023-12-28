import 'package:flutter/material.dart';
import 'package:menu_dashboard_app/views/screen1.dart';
import 'package:menu_dashboard_app/views/screen2.dart';
import '../output/assets.gen.dart';
import '../output/colors.gen.dart';
import '../src/base/i_state.dart';
import '../src/components/user_pic_widget.dart';
import '../src/utils/app_utils.dart';
import 'package:provider/provider.dart';

part 'menu_dashboard_part.dart';

class MenuDashBoardPage extends StatefulWidget {
  const MenuDashBoardPage({super.key});

  @override
  State<MenuDashBoardPage> createState() => _MenuDashBoardPageState();
}

class _MenuDashBoardPageState extends IState<MenuDashBoardPage> {
  bool isCollapsed = true;

  double? screenWidth, screenHeight;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    screenWidth = size.width;
    screenHeight = size.height;
    return Scaffold(
      body: Stack(
        children: [
          _menu(context),
          _dashBoard(context),
        ],
      ),
    );
  }

  Widget _menu(BuildContext context) {
    return SlideTransition(
      position: slideAnimation,
      child: ScaleTransition(
        scale: menuScaleAnimation,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  children: [
                    const UserPicWidget(
                      isOnline: true,
                    ),
                    const SizedBox(height: 10),
                    textWidget(),
                  ],
                ),
                const SizedBox(height: 50),
                ...menuGenerator(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _dashBoard(BuildContext context) {
    final pc = Provider.of<PageController>(context, listen: false);
    return AnimatedPositioned(
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : .6 * screenWidth!,
      right: isCollapsed ? 0 : -.4 * screenWidth!,
      duration: duration,
      child: ScaleTransition(
        scale: scaleAnimation,
        child: Material(
          elevation: 8.0,
          color: MenuAppColor.black,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 48.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (isCollapsed) {
                            animationController.forward();
                          } else {
                            animationController.reverse();
                          }
                          isCollapsed = !isCollapsed;
                        });
                      },
                      icon: const Icon(
                        Icons.menu,
                        color: MenuAppColor.white,
                      ),
                    ),
                    const Text(
                      AppUtils.myCards,
                      style: AppUtils.headerTextStyle,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.settings,
                        color: MenuAppColor.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 250,
                  child: PageView.builder(
                    physics: const BouncingScrollPhysics(),
                    controller: pc,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10.0),
                          width: 500,
                          height: 220,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            boxShadow: [
                              BoxShadow(
                                  offset: const Offset(4.0, 5.0),
                                  color: Colors.black54.withAlpha(50),
                                  blurRadius: 7.0),
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      );
                    },
                    itemCount: 3,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
