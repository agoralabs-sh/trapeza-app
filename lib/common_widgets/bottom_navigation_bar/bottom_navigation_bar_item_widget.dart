import 'package:flutter/material.dart';

class BottomNavigationItemWidget extends StatelessWidget {
  // static variables
  static String elementName = 'bottom-navigation-bar-item';
  // public variables
  final IconData icon;
  final bool isSelected;
  final String label;
  final GestureTapCallback onTap;

  const BottomNavigationItemWidget({
    super.key,
    required this.icon,
    required this.isSelected,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final double fontSize = 11;
    Color color = Theme.of(context).colorScheme.onSurface;

    if (isSelected) {
      color = Theme.of(context).colorScheme.primary;
    }

    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: onTap,
        child: Stack(
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    icon,
                    color: color,
                    size: 28,
                  ),
                  SizedBox(height: 6),
                  Text(
                    label,
                    style: TextStyle(
                      color: color,
                      fontSize: fontSize,
                    ),
                  ),
                ],
              )
            ),
          ]
        ),
      ),
    );
  }
}
