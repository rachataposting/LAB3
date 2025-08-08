// lib/screen/home.dart
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // ⭐ เพิ่มคำสั่งนี้เข้ามา
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildFoodItem(
          imagePath: 'assets/images/1.png',
          title: 'ไข่กะทะ',
        ),
        buildFoodItem(
          imagePath: 'assets/images/2.png',
          title: 'ชุดสลัดพร้อมเครื่องดื่ม',
        ),
        buildFoodItem(
          imagePath: 'assets/images/3.png',
          title: 'สเต็กเนื้อวากิว',
        ),
      ],
    );
  }

  Widget buildFoodItem({required String imagePath, required String title}) {
    // โค้ดส่วนนี้ยังคงเดิม
    return Column(
      // ที่เราเห็นผลลัพธ์แปลกๆ เพราะใน Column นี้เองก็มี MainAxisAlignment ของมัน
      // ลองเพิ่ม MainAxisAlignment.center ที่นี่เพื่อจัดให้สวยงาม
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          width: 100,
          height: 100,
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}