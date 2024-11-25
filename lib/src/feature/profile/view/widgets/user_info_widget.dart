import "package:flutter/material.dart";
import "package:nutrition/src/core/constants/context_extension.dart";
import "../../../../core/style/app_colors.dart";


class UserInfoWidget extends StatelessWidget {

 final  String? userPassword;
   const UserInfoWidget({super.key, this.userPassword});

  @override
  Widget build(BuildContext context) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [

        Text(
          "${context.localized.password}: ${userPassword != null? userPassword! : context.localized.user_password}",
          style: context.theme.textTheme.bodyLarge?.copyWith(color: AppColors.black,fontWeight: FontWeight.w600,),
        ),
      ],
    );
}
