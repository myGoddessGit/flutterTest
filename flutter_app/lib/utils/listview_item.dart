import 'package:flutter/material.dart';

///带圆角的ListTile
class ListTileCard extends StatelessWidget {

  final Widget leading;

  final Widget title;

  final Widget subtitle;

  final Widget trailing;

  final bool isTreeLine;

  final bool dense;

  final EdgeInsetsGeometry contentPadding;

  final bool enabled;

  final GestureTapCallback onTap;

  final GestureLongPressCallback onLongPress;

  final bool selected;

  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(borderRadius)
      ),
      child: ListTile(
        leading: leading,
        title: title,
        subtitle: subtitle,
        trailing: trailing,
        isThreeLine: isTreeLine,
        dense: dense,
        contentPadding: contentPadding,
        enabled: enabled,
        onTap: onTap,
        onLongPress: onLongPress,
        selected: selected,
      ),
    );
  }

  const ListTileCard({
    Key key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.isTreeLine = false,
    this.dense,
    this.contentPadding,
    this.enabled = true,
    this.onTap,
    this.onLongPress,
    this.selected = false,
    this.borderRadius = 0.0
    });
}