import 'package:flutter/material.dart';

class MHListTile extends StatefulWidget {

  const MHListTile({
    Key key,
    this.leading,
    this.middle,
    this.trailing,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 16.0),
    this.enabled = true,
    this.disabledColor = const Color(0xFFE5E5E5),
    this.onTap,
    this.onTapValue,
    this.onLongPress,
    this.onLongPressValue,
    this.callbackContext,
    this.selected = false,
    this.selectedColor = const Color(0xFFE3E3E3),
    this.allowTap = true,
    this.tapedColor = const Color(0xFFE5E5E5),
    this.dividerIndent = 0.0,
    this.dividerEndIndent = 0.0,
    this.dividerHeight = 0.5,
    this.dividerColor = const Color(0xFFD8D8D8),
    this.height,
  }) : assert(enabled != null),
       assert(selected != null),
       assert(allowTap != null),
       super(key: key);


  final Widget leading;

  final Widget middle;

  final Widget trailing;

  final EdgeInsetsGeometry contentPadding;

  final bool enabled;

  final Color disabledColor;

  final GestureTapCallback onTap;

  final void Function(BuildContext context) onTapValue;

  final GestureLongPressCallback onLongPress;

  final void Function(BuildContext context) onLongPressValue;

  /// 回调 BuildContext context 用于侧滑
  final void Function(BuildContext context) callbackContext;

  final bool selected;

  final Color selectedColor;

  /// 是否允许用户 tap
  final bool allowTap;

  /// default is 0xFFE5E5E5
  final Color tapedColor;

  /// 分割线高度 default is 0.5
  final double dividerHeight;

  /// 分割线颜色 default is 0xFFD8D8D8
  final Color dividerColor;

  /// 分割线相对头部偏移量 default is 0.0
  final double dividerIndent;

  /// 分割线相对尾部偏移量 default is 0.0
  final double dividerEndIndent;

  final double height;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MHListTileState();
  }
}

class _MHListTileState extends State<MHListTile>{
  /// 是否允许点击高亮
  bool _highlight = false;

  @override
  Widget build(BuildContext context) {
    if (widget.callbackContext != null && widget.callbackContext is Function){
      widget.callbackContext(context);
    }
    return Container(
      child: _buildChildWidget(),
    );
  }
  /// 构建子部件
  Widget _buildChildWidget(){
    return Column(
      children: <Widget>[
        _buildItemWidget(),
        _buildDividerWidget(),
      ],
    );
  }

  /// 构建子itemWidget
  Widget _buildItemWidget(){
    return GestureDetector(
      onTapDown: (widget.allowTap && widget.enabled && !widget.selected)
          ? _handleTapDown
          : null,
      onTapUp: (widget.allowTap && widget.enabled && !widget.selected)
          ? _handleTapUp
          : null,
      onTap: widget.enabled
          ? (){
              if (widget.onTapValue != null && widget.onTapValue is Function) {
                widget.onTapValue(context);
              } else if (widget.onTap != null && widget.onTap is Function){
                widget.onTap();
              }
            } : null,
      onLongPress: widget.enabled
          ? (){
              if (widget.onLongPressValue != null &&
                  widget.onLongPressValue is Function){
                widget.onTapValue(context);
              } else if (widget.onLongPress != null &&
                  widget.onLongPress is Function){
                widget.onTap();
              }
            }
            : null,
      onTapCancel: (widget.allowTap && widget.enabled && !widget.selected)
          ? _handleTapCancel
          : null,
      child: Container(
        height: widget.height == null
            ? null
            : widget.height - (widget.dividerHeight ?? 0.5),
        color: _fetchColor(),
        padding: widget.contentPadding ?? EdgeInsets.symmetric(horizontal: 16.0),
        child: _buildItem(),
      ),
    );
  }

  /// 获取背景色
  Color _fetchColor(){
    if (widget.enabled) {
      if (widget.selected){
        return widget.selectedColor;
      } else {
        return _highlight ? widget.tapedColor : Color(0xFFFFFFFF);
      }
    } else {
      return widget.disabledColor;
    }
  }

  /// 点击状态事件
  void _handleTapDown(TapDownDetails details){
    setState(() {
      _highlight = true;
    });
  }
  void _handleTapUp(TapUpDetails details){
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel(){
    setState(() {
      _highlight = false;
    });
  }
  /// 返回 item
  Widget _buildItem(){
    final List<Widget> children = [];

    if (widget.leading != null) {
      children.add(widget.leading);
    }

    if (widget.middle != null) {
      children.add(
        Expanded(child: widget.middle)
      );
    }

    if (widget.trailing != null) {
      children.add(widget.trailing);
    }
    return Row(
      children: children,
    );
  }
  /// 构建分割线
   Widget _buildDividerWidget(){
      return Divider(
        height: widget.dividerHeight ?? 0.5,
        color: widget.dividerColor ?? Color(0xFFD8D8D8),
        indent: widget.dividerIndent ?? 0.0,
        endIndent: widget.dividerEndIndent ?? 0.0,
      );
   }
}