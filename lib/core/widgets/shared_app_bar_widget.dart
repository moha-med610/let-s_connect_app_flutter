import 'package:flutter/material.dart';

class SharedAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const SharedAppBarWidget({
    super.key,
    this.isCenter = false,
    this.leading,
    this.actions,
    required this.title,
  });

  final String title;
  final List<Widget>? actions;
  final bool isCenter;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: isCenter,
      leading: leading,
      scrolledUnderElevation: 0,
      title: Text(title, style: Theme.of(context).textTheme.headlineLarge),
      floating: true,
      snap: true,
      elevation: 0,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

// AppBar(
// title: Text(title, style: Theme.of(context).textTheme.headlineLarge),
// actions: actions,
// centerTitle: isCenter,
// leading: leading,
// scrolledUnderElevation: 0,
// );
