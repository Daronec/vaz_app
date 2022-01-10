import 'package:flutter/material.dart';
import 'package:vaz_mobile/resourses/main_icons.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/item_data_top_panel.dart';
import 'package:vaz_mobile/style/app_colors.dart';

class WeatherDialog extends StatelessWidget {
  final String? name;
  final double? temp;
  final int? pressure;
  final double? speedWind;
  final int? humidity;

  const WeatherDialog({
    Key? key,
    required this.name,
    required this.temp,
    required this.pressure,
    required this.speedWind,
    required this.humidity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name!,
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(
                  Icons.close,
                  color: AppColors.red,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ItemDataTopPanel(
                icon: MainIcons.temp_location,
                data: '${temp!.round().toString()} C°',
                color: AppColors.dark_grey,
              ),
              ItemDataTopPanel(
                icon: MainIcons.pressure,
                data: '${pressure.toString()} Па',
                color: AppColors.dark_grey,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ItemDataTopPanel(
                icon: MainIcons.speed_wind,
                data: '${speedWind.toString()} m/s',
                color: AppColors.dark_grey,
              ),
              ItemDataTopPanel(
                icon: MainIcons.humidity,
                data: '${humidity.toString()}%',
                color: AppColors.dark_grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
