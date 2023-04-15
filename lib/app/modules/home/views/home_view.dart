import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:geolokasi/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GEOLOKASI'),
        centerTitle: true,
        actions: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                stream: controller.streamRole(),
                builder: (context, snapshot) {
                  return IconButton(
                      onPressed: () {
                        Get.toNamed(Routes.PROFILE_PAGE);
                      },
                      icon: Icon(Icons.person));
                },
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Text(
          'TESTING',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
