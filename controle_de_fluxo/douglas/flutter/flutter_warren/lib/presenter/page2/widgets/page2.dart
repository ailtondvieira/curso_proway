import 'package:flutter/material.dart';
import 'package:flutter_warren/core/app_assets.dart';
import 'package:table_calendar/table_calendar.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     //appBar: AppBar(),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [ 
             Column(children: [Text('teste')],),
              // IconButton(
              //   child: const Icon(
                //   Icons.arrow_back_sharp,
                //   size: 50,
                // ),
              //),

              // Navigator.pop(context);
              const Text(
                '',
                style: TextStyle(
                  fontFamily: 'Schuyler',
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                ),

              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TableCalendar(
  firstDay: DateTime.utc(2010, 10, 16),
  lastDay: DateTime.utc(2030, 3, 14),
  focusedDay: DateTime.now(),
),
              )
            ],
          ),
        ],
      ),
    );
  }
}
