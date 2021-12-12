import 'package:covid19/app/data/models/daily_model.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_daily_controller.dart';

class DetailDailyView extends GetView<DetailDailyController> {
  Daily dataDaily = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TANGGAL ${dataDaily.reportDate}'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text("Total Terkonfirmasi : ${dataDaily.totalConfirmed} kasus"),
          Text("Total Kasus Delta : ${dataDaily.deltaConfirmed} kasus"),
          Text("Total Recovered : ${dataDaily.totalRecovered} kasus"),
          Text("Total Terkonfirmasi : ${dataDaily.confirmed?.total ?? "-"} kasus"),
          Text("\t\t\tChina : ${dataDaily.confirmed?.china ?? "-"} kasus"),
          Text("\t\t\tDi Luar China : ${dataDaily.confirmed?.outsideChina ?? "-"} kasus"),
        ],
      ),
    );
  }
}
