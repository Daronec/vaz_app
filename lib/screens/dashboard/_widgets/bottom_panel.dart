import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:vaz_mobile/resourses/main_icons.dart';
import 'package:vaz_mobile/screens/dashboard/_bloc/dashboard_bloc.dart';
import 'package:vaz_mobile/screens/dashboard/view_model.dart';
import 'package:vaz_mobile/style/app_colors.dart';
import 'package:vaz_mobile/style/app_text_style.dart';
import 'package:vaz_mobile/widgets/dialogs/edit_odometer_dialog.dart';
import 'package:vaz_mobile/widgets/dialogs/show_button_dialog.dart';

class BottomPanel extends StatelessWidget {
  final int? totalValueOdometer;
  final int? partValueOdometer;
  final Function? sos;

  const BottomPanel({
    Key? key,
    this.totalValueOdometer,
    this.partValueOdometer,
    this.sos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<DashboardViewModel>(context);
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
                        vm.clearTimeDistance();
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
                child: StreamBuilder<double>(
                    stream: vm.getDistance,
                    initialData: 0.0,
                    builder: (context, snapshot) {
                      return RichText(
                        text: TextSpan(
                          text: snapshot.data.toString(),
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
                      );
                    }),
              ),
            ),
          ),
          IconButton(
            onPressed: () => sos!(),
            icon: SvgPicture.asset(
              MainIcons.sos,
              color: AppColors.red,
            ),
          ),
          Expanded(
            child: Center(
              child: InkWell(
                onTap: () => showButtonDialog(
                  context,
                  [
                    OutlinedButton(
                      onPressed: () {
                        vm.clearTimeDistance();
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
                        editOdometerDialog(
                          context,
                          vm.odometerTextController,
                          vm.odometerFocusNode,
                          (value) {
                            BlocProvider.of<DashboardBloc>(context)
                              ..add(
                                DashboardEvent.editOdometer(
                                    valueOdometer: value),
                              );
                          },
                        );
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
                child: StreamBuilder<double>(
                    stream: vm.getTimeDistance,
                    builder: (context, snapshot) {
                      return RichText(
                        text: TextSpan(
                          text: snapshot.data.toString(),
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
                      );
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
