
import 'package:flutter/widgets.dart';
import '../../output/assets.gen.dart';
import 'container_painter.dart';

class UserPicWidget extends StatelessWidget {
  const UserPicWidget({
    super.key,
    required this.isOnline,
  });
  final bool isOnline;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter:  ContainerPainter(isOnline: isOnline),
      child: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(Assets.images.user.path),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
