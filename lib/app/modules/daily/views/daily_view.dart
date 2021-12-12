import 'package:covid19/app/data/models/daily_model.dart';
import 'package:covid19/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/daily_controller.dart';

class DailyView extends GetView<DailyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DAILY REPORT'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Daily>?>(
        future: controller.getDataDaily(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) return Center(child: CircularProgressIndicator());
          if (snapshot.data?.length == 0 || snapshot.data == null) return Center(child: Text("TIDAK ADA DATA"));
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) => ListTile(
              onTap: () => Get.toNamed(
                Routes.DETAIL_DAILY,
                arguments: snapshot.data![index],
              ),
              leading: CircleAvatar(
                child: Text("${index + 1}"),
              ),
              title: Text("${snapshot.data![index].reportDate}"),
              subtitle: Text("Total : ${snapshot.data![index].totalConfirmed} kasus"),
              trailing: Text("Rate : ${snapshot.data![index].incidentRate.substring(0, 5)}"),
            ),
          );
        },
      ),
    );
  }
}
