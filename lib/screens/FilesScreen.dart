import 'package:f_drive/util/Functions.dart';
import 'package:f_drive/util/ScreenColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FilesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recent View',
          style: Functions.textStyle(
            fontSize: 18,
            color: ScreenColors.subTextColor!,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 100,
          child: Align(
            alignment: Alignment.centerLeft,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 4.0, left: 4.0),
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 90,
                          child: ClipRRect(
                            clipBehavior: Clip.antiAlias,
                            borderRadius: BorderRadius.circular(22.0),
                            child: Image.network(
                                "https://media.istockphoto.com/id/1218498460/photo/a-art-work-of-lord-krishna-with-his-lover-radha-on-a-paper-radhe-krishna.webp?s=1024x1024&w=is&k=20&c=DdFntFyZ96VZiAPRsix-l4zPVkALzLmbInCGel6QMII="),
                          ),
                        ),
                        Container(
                          width: 90,
                          child: Text(
                            "Hare Krsna Hare Krsna, Krsna Krsna Hare Hare",
                            overflow: TextOverflow.ellipsis,
                            style: Functions.textStyle(
                              fontSize: 12,
                              color: ScreenColors.subTextColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
        )
      ],
    );
  }
}
