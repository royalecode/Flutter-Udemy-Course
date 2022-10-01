import 'package:flutter/material.dart';
import '../../icons/custom_icons.dart';
import 'circle_button.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Row(
          children: const [
            _QuickButton(
              color: Color(0xff92be87),
              iconData: CustomIcons.photos,
              label: "Gallery",
            ),
            SizedBox(
              width: 15,
            ),
            _QuickButton(
              color: Color(0xff2880D4),
              iconData: CustomIcons.user_friends,
              label: "Tag Friends",
            ),
            SizedBox(
              width: 15,
            ),
            _QuickButton(
              color: Color(0xffFB7171),
              iconData: CustomIcons.video_camera,
              label: "Live",
            ),
          ],
        ),
      ),
    );
  }
}

class _QuickButton extends StatelessWidget {
  const _QuickButton({
    Key? key,
    required this.iconData,
    required this.color,
    required this.label,
  }) : super(key: key);

  final IconData iconData;
  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 25,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: color.withOpacity(0.2),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleButton(
            color: color.withOpacity(0.7),
            iconData: iconData,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            label,
            style: TextStyle(color: color),
          ),
        ],
      ),
    );
  }
}
