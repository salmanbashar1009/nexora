import 'package:flutter/material.dart';


class Utils {
  /// app logo
  static Widget appLogo({double? width, double? height}) {
    return Image.asset(
      " ",
      width: width ?? 250,
      height: height ?? 75,
    );
  }

  /// app primary button
  static Widget primaryButton(
      {required String title,
        required VoidCallback onPressed,
        Color? backgroundColor,
        Color? textColor,
        double? borderRadius,
        double? fontSize,
        double? height,
        double? width}) {
    return SizedBox(
      height: height ?? 48,
      width: width ?? double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              padding: AppPadding.padding(horizontal: 8,vertical: 4),
              backgroundColor: backgroundColor ?? AppColors.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 99))),
          child: Text(
            title,
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                color: textColor ?? AppColors.black,
                fontSize:fontSize ?? 16),
          )),
    );
  }

  /// custom tile
  static Widget customTile({
    required Widget child,
    double? height,
    double? width,
    bool? isSelected,
    double? verticalPadding,
    double? horizontalPadding,
  }) {
    return Container(
      height: height,
      width: width ?? double.infinity,
      alignment: Alignment.center,
      padding: AppPadding.padding(
          horizontal: horizontalPadding ?? 16, vertical: verticalPadding ?? 0),
      decoration: BoxDecoration(
          color: AppColors.white5,
          border: Border.all(
              color: isSelected == true
                  ? AppColors.primaryColor
                  : AppColors.white6),
          borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }

  /// custom circle
  static Widget customCircle(
      {required Widget child,
        double? width,
        double? height,
        EdgeInsets? padding}) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      alignment: Alignment.center,
      decoration:
      BoxDecoration(color: Color(0xFF131517), shape: BoxShape.circle),
      child: child,
    );
  }

  /// app back button
  static Widget backButton({required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(Icons.arrow_back_ios),
    );
  }

  static Widget buildList({
    required int itemCount,
    required Widget Function(int? index) widget,
    double? height,
    double? width,
    Axis? scrollDirection
  }) {
    return SizedBox(
      height: height ?? 120,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: scrollDirection ??  Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return widget(index);
        },
      ),
    );
  }

  /// app list tile
  static  Widget buildTileItem(
      {required BuildContext context,
        required String iconPath,
        required String title,
        Icon? icon,
        required VoidCallback onTap}) {
    return ListTile(
      leading: Image.asset(iconPath, width: 20, height: 20),
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(color: AppColors.white),
      ),
      trailing: icon ??
          const Icon(
            Icons.chevron_right,
            color: AppColors.white,
            size: 20,
          ),
      onTap: onTap,
    );
  }

  /// app bar
  static AppBar appBar({required BuildContext context,Widget? leading, String? title , List<Widget>? actions,bool? isTitleCenter, Color? backgroundColor}){
    final textTheme = Theme.of(context).textTheme;
    return AppBar(
        backgroundColor: backgroundColor ?? Colors.transparent,
        leading: leading ?? backButton(onTap: () {
          Navigator.pop(context);
        }),
        title: Text(
          title ?? '',
          style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
        ),
        centerTitle: isTitleCenter ?? true,
        actionsPadding: const EdgeInsets.only(right: 8),
        actions: actions
    );
  }
}