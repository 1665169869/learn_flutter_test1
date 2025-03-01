import 'package:flutter/material.dart';
import 'package:learn_flutter_test1/pages/home/tab_index/index_navigator_item.dart';

class IndexNavigator extends StatelessWidget {
  const IndexNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: Offset(0.0, 0.5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:
            indexNavigatorItemList
                .map(
                  (item) => InkWell(
                    onTap: () {
                      if (item.onTap != null) item.onTap?.call(context);
                    },
                    child: Column(
                      children: [
                        Icon(item.icon, size: 48, color: Colors.green),
                        Text(
                          item.label,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }
}
