import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:flutter_svg/svg.dart";
import "package:go_router/go_router.dart";
import "package:nutrition/src/core/constants/context_extension.dart";
import "package:nutrition/src/core/style/text_style.dart";
import "../../../../core/routes/app_route_names.dart";
import "../../../../core/style/app_colors.dart";

class BookmarkPageMainBox extends StatelessWidget {
  const BookmarkPageMainBox({super.key});

  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: BorderRadius.circular(10.r),
        child: SizedBox(
          height: 150.h,
          child: InkWell(
            onTap: () => context.go("${AppRouteNames.bookmark}/${AppRouteNames.foodDetails}"),
            child: DecoratedBox(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/all_post_image.png"),
                ),
              ),
              child: Stack(
                children: [
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black54,
                          Colors.black,
                        ],
                      ),
                    ),
                    child: Center(),
                  ),
                  Row(
                    children: [
                      10.horizontalSpace,
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "spice roasted chicken with flavored rice",
                              style: context.textTheme.titleMedium?.copyWith(
                                fontSize: FontSize.size14,
                              ),
                            ),
                            6.verticalSpace,
                            Text(
                              "By Mark Kelvin",
                              style: context.textTheme.headlineSmall,
                            ),
                            4.verticalSpace,
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          10.verticalSpace,
                          SizedBox(
                            width: 52.w,
                            height: 22.h,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                color: AppColors.cFFE1B3,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/star_selected_icon.svg",
                                    height: 14.h,
                                    width: 14.w,
                                  ),
                                  Text(
                                    "4.0",
                                    style: context.textTheme.headlineSmall?.copyWith(
                                      color: AppColors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              SvgPicture.asset("assets/icons/timer_in_card_icon.svg"),
                              5.horizontalSpace,
                              Text(
                                "20 min",
                                style: context.textTheme.labelSmall,
                              ),
                              5.horizontalSpace,
                              SizedBox(
                                width: 24.w,
                                height: 24.h,
                                child: DecoratedBox(
                                  decoration: const BoxDecoration(
                                    color: AppColors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      "assets/icons/recipe_bottom_navigation_bar_icon.svg",
                                      // ignore: deprecated_member_use
                                      color: Colors.green,
                                      width: 16.w,
                                      height: 16.h,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          6.verticalSpace,
                        ],
                      ),
                      10.verticalSpace,
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
