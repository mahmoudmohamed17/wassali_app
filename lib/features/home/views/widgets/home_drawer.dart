import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wassali_app/core/localization/localization_keys.dart';
import 'package:wassali_app/core/theme/colors.dart';
import 'package:wassali_app/core/utils/app_assets.dart';
import 'package:wassali_app/core/utils/extensions.dart';

/// Customizable drawer, use it with the home screen
/// Change the static variables with the real one from the API
class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(color: AppColors.primaryDark),
            accountName: Text(
              'محمود محمد', // Real user name here
              style: context.textTheme.labelLarge?.copyWith(
                color: AppColors.textOnPrimary,
              ),
            ),
            accountEmail: Text(
              '+201127243403', // Real user mobile number here
              style: context.textTheme.bodyLarge?.copyWith(
                color: AppColors.textOnPrimary,
              ),
              textDirection: TextDirection.ltr,
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(
                AppAssets.logo,
              ), // Real user profile picture here
            ),
            margin: EdgeInsets.zero,
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.circleUser),
            title: Text(LocalizationKeys.myProfile),
            onTap: () {
              /// TODO: Navigate the user profile
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(FontAwesomeIcons.comments),
            title: Text(LocalizationKeys.chats),
            onTap: () {},

            /// TODO: Navigate the user chats
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.cubes),
            title: Text(LocalizationKeys.myActivities),
            onTap: () {
              /// TODO: Navigate the user activities
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.gear),
            title: Text(LocalizationKeys.settings),
            onTap: () {
              /// TODO: Navigate the settings
            },
          ),
          ListTile(
            leading: const Icon(
              FontAwesomeIcons.arrowRightFromBracket,
              color: AppColors.accentRed,
            ),
            title: Text(
              LocalizationKeys.logout,
              style: const TextStyle(color: AppColors.accentRed),
            ),
            onTap: () {
              /// TODO: Logging out
            },
          ),
        ],
      ),
    );
  }
}
