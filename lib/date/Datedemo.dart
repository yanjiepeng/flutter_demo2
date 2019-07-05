import 'package:flutter/material.dart';

import 'package:date_format/date_format.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class DateDemo extends StatefulWidget {
  @override
  _DateDemoState createState() => _DateDemoState();
}

class _DateDemoState extends State<DateDemo> {
  var time = DateTime.now();
  var nowTime = TimeOfDay(hour: 15, minute: 24) ;


  _showDatePicker() async {
//    showDatePicker(
//        context: context, initialDate: time, firstDate:DateTime(1980), lastDate: DateTime(2020),
//    ).then((result){
//      print(result);
//    });

    var result = await showDatePicker(
      context: context,
      initialDate: time,
      firstDate: DateTime(1980),
      lastDate: DateTime(2020),
      locale: Locale('zh') //非必须
    );

    setState(() {
      this.time = result;
    });
  }

  _showTimePicker() async {

    var result = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: 16, minute: 17),
    );

    setState(() {
      this.nowTime = result;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //时间戳转换
    print(time);
    print(time.millisecondsSinceEpoch);
    print(DateTime.fromMillisecondsSinceEpoch(1559967090998));
    //时间格式转换

    print(formatDate(time, [yyyy, '-', mm, '-', dd]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DateDemo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('${formatDate(time, [yyyy, '-', mm, '-', dd])}'),
                Icon(Icons.keyboard_arrow_down)
              ],
            ),
            onTap: () {
              _showDatePicker();
            },
          ),

          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('${nowTime.format(context)}'),
                Icon(Icons.keyboard_arrow_down)
              ],
            ),
            onTap: () {
              _showTimePicker();
            },
          )
        ],
      ),
    );
  }
}
