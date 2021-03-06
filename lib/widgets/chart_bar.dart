import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingPcOfTotal;
  ChartBar(this.label, this.spendingAmount, this.spendingPcOfTotal);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Column(
        children: <Widget>[
          Container(
            height: constraints.maxHeight * 0.10,
            child: FittedBox(
              child: Text('Rs' + '${spendingAmount.toStringAsFixed(0)}'),
            ),
          ),
          SizedBox(
            height: constraints.maxHeight * 0.05,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1.0),
              borderRadius: BorderRadius.circular(5),
            ),
            height: constraints.maxHeight * 0.7,
            width: 30,
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Colors.green.shade900, width: 2.0),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.green.shade900,
                  ),
                ),
                FractionallySizedBox(
                  heightFactor: (1 - spendingPcOfTotal),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(220, 220, 220, 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: constraints.maxHeight * 0.05,
            child: SizedBox(
              height: 4,
            ),
          ),
          Container(
            height: constraints.maxHeight * 0.10,
            child: FittedBox(
              child: Text(
                label,
              ),
            ),
          ),
        ],
      );
    });
  }
}
