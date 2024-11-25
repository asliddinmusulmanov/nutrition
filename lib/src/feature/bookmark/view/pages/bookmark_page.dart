import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:nutrition/src/core/constants/context_extension.dart";
import "package:nutrition/src/feature/bookmark/view/widgets/bookmark_page_main_box.dart";

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            context.localized.saved_recipes,
            style: context.textTheme.titleLarge,
          ),
          centerTitle: true,
          forceMaterialTransparency: true,
        ),
        body: ListView.separated(
          itemCount: 10,
          padding: REdgeInsets.symmetric(vertical: 10, horizontal: 25),
          separatorBuilder: (context, index) => 12.verticalSpace,
          itemBuilder: (context, index) => const BookmarkPageMainBox(),
        ),
      );
}
