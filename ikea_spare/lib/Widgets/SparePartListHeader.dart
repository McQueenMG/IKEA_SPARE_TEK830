import 'package:flutter/material.dart';

class SparePartListHeader extends StatelessWidget {
  const SparePartListHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 78, // Fixed width for the image
        ),
        const VerticalDivider(),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Text(
              "Name",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              softWrap: false,
            ),
          ),
        ),
        const VerticalDivider(),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Text(
              "ID",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              softWrap: false,
            ),
          ),
        ),
        const VerticalDivider(),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Text(
              "Location",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              softWrap: false,
            ),
          ),
        ),
        const VerticalDivider(),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Text(
              "Quantity",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              softWrap: false,
            ),
          ),
        ),
      ],
    );
  }
}
