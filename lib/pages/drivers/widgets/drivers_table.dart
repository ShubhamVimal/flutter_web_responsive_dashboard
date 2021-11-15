import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_web_responsive_dashboard/constants/style.dart';
import 'package:flutter_web_responsive_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_responsive_dashboard/widgets/custom_text.dart';

/// Example without a datasource
class DriversTable extends StatelessWidget {
  const DriversTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.only(bottom: 30.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 6),
                color: lightGrey.withOpacity(.1),
                blurRadius: 12.0)
          ],
          border: Border.all(color: lightGrey, width: .5)),
      child: DataTable2(
          columnSpacing: 12,
          horizontalMargin: 12,
          minWidth: 600,
          columns: const [
            DataColumn2(
              label: Text('Name'),
              size: ColumnSize.L,
            ),
            DataColumn(
              label: Text('Location'),
            ),
            DataColumn(
              label: Text('Rating'),
            ),
            DataColumn(
              label: Text('Action'),
            ),
          ],
          rows: List<DataRow>.generate(
              7,
              (index) => DataRow(cells: [
                    const DataCell(CustomText(
                      text: 'Steve Austin',
                    )),
                    const DataCell(CustomText(
                      text: 'New York City',
                    )),
                    DataCell(Row(mainAxisSize: MainAxisSize.min, children: [
                      const Icon(Icons.star,
                          color: Colors.deepOrange, size: 18.0),
                      const SizedBox(width: 5.0),
                      CustomText(
                        text: '4.$index',
                      )
                    ])),
                    DataCell(Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5.0, vertical: 4.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: active, width: .5),
                        color: light,
                        borderRadius: ResponsiveWidget.isSmallScreen(context)
                            ? BorderRadius.circular(10.0)
                            : BorderRadius.circular(20.0),
                      ),
                      // padding: ResponsiveWidget.isSmallScreen(context)
                      //     ? const EdgeInsets.all(5.0)
                      //     : const EdgeInsets.all(0.0),
                      child: CustomText(
                          text: ResponsiveWidget.isSmallScreen(context)
                              ? 'Block'
                              : 'Block Driver',
                          color: active.withOpacity(.7),
                          weight: FontWeight.bold),
                    ))
                  ]))),
    );
  }
}
