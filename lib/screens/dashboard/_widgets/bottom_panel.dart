import 'package:flutter/material.dart';
import 'package:vaz_mobile/resourses/main_icons.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/icon_panel.dart';
import 'package:vaz_mobile/style/app_colors.dart';
import 'package:vaz_mobile/style/app_text_style.dart';
import 'package:vaz_mobile/widgets/dialogs/showButtonDialog.dart';

class BottomPanel extends StatelessWidget {
  final int? totalValueOdometer;
  final int? partValueOdometer;
  final Function? openSettings;

  const BottomPanel({
    Key? key,
    this.totalValueOdometer,
    this.partValueOdometer,
    this.openSettings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Center(
              child: InkWell(
                onTap: () => showButtonDialog(
                  context,
                  [
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 32,
                        ),
                      ),
                      child: Text(
                        'Сбросить',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                  ],
                ),
                child: RichText(
                  text: TextSpan(
                    text: partValueOdometer.toString(),
                    style: AppTextStyles.subTitle.copyWith(
                      color: AppColors.light_yellow,
                      fontSize: 36,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' km',
                        style: AppTextStyles.subTitle.copyWith(
                          color: AppColors.light_yellow,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          IconPanel(
            icon: MainIcons.settings,
            onTap: () => openSettings!(),
          ),
          Expanded(
            child: Center(
              child: InkWell(
                onTap: () => showButtonDialog(
                  context,
                  [
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 32,
                        ),
                      ),
                      child: Text(
                        'Сбросить',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 32,
                        ),
                      ),
                      child: Text(
                        'Редактирование',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                  ],
                ),
                child: RichText(
                  text: TextSpan(
                    text: totalValueOdometer.toString(),
                    style: AppTextStyles.subTitle.copyWith(
                      color: AppColors.light_yellow,
                      fontSize: 36,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' km',
                        style: AppTextStyles.subTitle.copyWith(
                          color: AppColors.light_yellow,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
