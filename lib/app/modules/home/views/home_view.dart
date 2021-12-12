import 'package:covid19/app/data/models/summary_model.dart';
import 'package:covid19/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DATABASE COVID 19'),
        centerTitle: true,
      ),
      body: FutureBuilder<Summary?>(
        future: controller.getSummary(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) return Center(child: CircularProgressIndicator());
          if (snapshot.data == null) return Center(child: Text("TIDAK ADA DATA."));
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (snapshot.data!.image != null)
                Card(
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.network(snapshot.data!.image!),
                  ),
                ),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      onTap: () => Get.toNamed(Routes.DAILY),
                      title: Text("DAILY"),
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
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
