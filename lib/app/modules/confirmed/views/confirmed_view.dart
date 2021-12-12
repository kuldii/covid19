import 'package:covid19/app/data/models/confirmed_model.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/confirmed_controller.dart';

class ConfirmedView extends GetView<ConfirmedController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KASUS TERKONFIRMASI'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Confirmed>?>(
        future: controller.getDataConfirmed(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) return Center(child: CircularProgressIndicator());
          if (snapshot.data?.length == 0 || snapshot.data == null) return Center(child: Text("TIDAK ADA DATA"));
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(
                child: Text("${index + 1}"),
              ),
              title: Text("${snapshot.data![index].combinedKey}"),
              subtitle: Text("Total : ${snapshot.data![index].confirmed} kasus"),
            ),
          );
        },
      ),
    );
  }
}
