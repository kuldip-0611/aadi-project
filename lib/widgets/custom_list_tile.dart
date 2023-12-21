import 'package:first_star_energy/utils/color_constant.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String label;
  final void Function() onTap;
  final bool isTrailing;
  final bool isLastItem;

  const CustomListTile({
    Key? key,
    required this.label,
    required this.onTap,
    required this.isTrailing,
    required this.isLastItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: whitecolor.withOpacity(0.4),
          ),
          child: ListTile(
            onTap: onTap,
            title: Text(
              label,
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
              // overflow: TextOverflow.ellipsis,
            ),
            trailing: isTrailing
                ? Icon(
                    Icons.keyboard_arrow_right,
                    size: 28,
                    color: Theme.of(context).primaryColor,
                  )
                : const SizedBox(),
          ),
        ),
        if (!isLastItem)
          const Divider(
            height: 0,
            thickness: 1,
            endIndent: 10,
            indent: 10,
          ), // Add a Divider if not the last item
      ],
    );
  }
}
