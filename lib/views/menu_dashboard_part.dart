part of 'menu_dashboard.dart';

Widget textWidget() => RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: "John Doe\n",
            style: AppUtils.menuTextStyle,
          ),
          TextSpan(
            text: "California, USA",
            style: AppUtils.menuTextStyle.copyWith(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
              color: MenuAppColor.white.withAlpha(100),
            ),
          ),
        ],
      ),
    );

List<Widget> menuGenerator(BuildContext context) {
  return menuItems(context)
      .entries
      .map(
        (menuItem) => Row(
          children: [
            Image.asset(
              menuItem.key.iconData,
              height: 22,
              width: 22,
              color: MenuAppColor.white,
            ),
            TextButton(
                onPressed: menuItem.value,
                child: Text(
                  menuItem.key.title,
                  style: AppUtils.menuTextStyle,
                ))
          ],
        ),
      )
      .toList();
}

@immutable
class MenuItemData {
  final String iconData;
  final String title;

  const MenuItemData({
    required this.iconData,
    required this.title,
  });
}

Map<MenuItemData, VoidCallback> menuItems(BuildContext context) => {
      MenuItemData(
          iconData: Assets.icons.dashboard.path,
          title: AppUtils.dashBoard): () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Screen1()));
      },
      MenuItemData(
          iconData: Assets.icons.messages.path, title: AppUtils.messages): () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Screen2()));
      },
      MenuItemData(
          iconData: Assets.icons.bill.path,
          title: AppUtils.utilityBills): () {},
      MenuItemData(
          iconData: Assets.icons.funds.path,
          title: AppUtils.fundsTransfer): () {},
      MenuItemData(
          iconData: Assets.icons.branches.path, title: AppUtils.branches): () {}
    };
