import 'package:covid19/app/data/models/summary_model.dart';
import 'package:covid19/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DATABASE COVID 19'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => Get.offAllNamed(Routes.LOGIN),
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: FutureBuilder<Summary?>(
        future: controller.getSummary(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) return Center(child: CircularProgressIndicator());
          if (snapshot.data == null) return Center(child: Text("TIDAK ADA DATA."));
          return ListView(
            padding: EdgeInsets.all(20),
            children: [
              ListTile(
                onTap: () => Get.toNamed(Routes.DAILY),
                title: Text("DAILY"),
                subtitle: Text("LAST UPDATE : ${DateFormat.yMMMMEEEEd().format(snapshot.data!.lastUpdate!).toUpperCase()}"),
              ),
              ListTile(
                onTap: () => Get.toNamed(Routes.CONFIRMED),
                title: Text("CONFIRMED"),
                subtitle: Text("TOTAL : ${snapshot.data!.confirmed?.value ?? '-'} KASUS"),
              ),
              ListTile(
                onTap: () => Get.toNamed(Routes.DEATH),
                title: Text("DEATH"),
                subtitle: Text("TOTAL : ${snapshot.data!.deaths?.value ?? '-'} KASUS"),
              ),
            ],
          );
        },
      ),
    );
  }
}
