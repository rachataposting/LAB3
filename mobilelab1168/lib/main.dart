// lib/main.dart

import 'package:flutter/material.dart';
import 'screen/home.dart'; // import หน้าจอ Home ที่เราสร้างแยกไว้

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // เอาป้าย DEBUG มุมขวาบนออก
      debugShowCheckedModeBanner: false,

      // Scaffold คือโครงสร้างหลักของหน้าจอ
      home: Scaffold(
        
        // ส่วนของแถบด้านบน (AppBar) ตามใบงานหน้า 8
        appBar: AppBar(
          title: const Text("CET App 168"), // หรือ "" ตามที่คุณต้องการ
          backgroundColor: Colors.deepOrange, // สีตามใบงาน
          centerTitle: true, // จัดให้อยู่ตรงกลาง
        ),
        
        // ส่วนของเนื้อหาหลัก ให้ไปเรียกใช้ Class Home จากไฟล์ home.dart
        body: const Home(),
      ),
    );
  }
}