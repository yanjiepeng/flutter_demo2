import 'package:flutter/material.dart';

class SimpleListview1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      //默认垂直列表

      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          title: Text(
            '兰福德未恢复完整训练，不确定能否出战夏季联赛',
            style: TextStyle(fontSize: 24, color: Colors.red),
          ),
          subtitle: Text(
              '虎扑6月27日讯 据《波士顿环球报》记者Adam Himmelsbach报道，他听说罗密欧-兰福德不会在本周末即将开始的夏季联赛前恢复完整训练。来自印第安纳大学的后卫兰福德在今夏选秀大会上首轮第14顺位被凯尔特人选中，根据之前报道，兰福德在去年11月份一次训练中拇指韧带撕裂，随后他带伤打完了本赛季的NCAA比赛，并在32场比赛中场均出战34.1分钟，贡献16.5分5.4篮板2.3助攻。兰福德在今年4月份接受了拇指手术，两周前刚刚开始可以进行运球和投篮训练。凯尔特人在拉斯维加斯的夏季联赛将在北京时间7月7日开始，他们首场的对手将是费城76人队。'),
        ),
        ListTile(
          title: Text('小托马斯：我会努力找回17年的感觉，渴望再次证明自己'),
          subtitle: Text(
              '虎扑6月27日讯 后卫以赛亚-托马斯在近日接受了NBA著名记者Adrian Wojnarowski采访，他回顾了过去这个赛季，并且对自己的未来进行了展望。'),
        ),
        ListTile(
          title: Text('小托马斯：我会努力找回17年的感觉，渴望再次证明自己'),
          subtitle: Text(
              '虎扑6月27日讯 后卫以赛亚-托马斯在近日接受了NBA著名记者Adrian Wojnarowski采访，他回顾了过去这个赛季，并且对自己的未来进行了展望。'),
        ),
        ListTile(
          title: Text('小托马斯：我会努力找回17年的感觉，渴望再次证明自己'),
          subtitle: Text(
              '虎扑6月27日讯 后卫以赛亚-托马斯在近日接受了NBA著名记者Adrian Wojnarowski采访，他回顾了过去这个赛季，并且对自己的未来进行了展望。'),
        ),
        ListTile(
          title: Text('小托马斯：我会努力找回17年的感觉，渴望再次证明自己'),
          subtitle: Text(
              '虎扑6月27日讯 后卫以赛亚-托马斯在近日接受了NBA著名记者Adrian Wojnarowski采访，他回顾了过去这个赛季，并且对自己的未来进行了展望。'),
        )
      ],
    );
  }
}
