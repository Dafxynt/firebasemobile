import 'package:flutter/material.dart';
import 'package:flutter_google_signin/widgets/shift_cart.dart';

class AbsenScreen extends StatefulWidget {
  @override
  _AbsenScreenState createState() => _AbsenScreenState();
}

class _AbsenScreenState extends State<AbsenScreen> {
  int currentPage = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Absensi Langsung'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            '08:45',
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'Jum, 12 Mar 2022',
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),
          SizedBox(height: 20),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              children: const [
                ShiftCard(
                  shiftName: 'Shift Pagi',
                  startTime: '09:00',
                  endTime: '10:00',
                ),
                ShiftCard(
                  shiftName: 'Shift Siang',
                  startTime: '12:00',
                  endTime: '18:00',
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(2, (index) => buildDot(index)),
          ),
          SizedBox(height: 16),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Riwayat Absen', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('Lihat Log', style: TextStyle(fontSize: 14, color: Colors.blue)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDot(int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: currentPage == index ? 12 : 8,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentPage == index ? Colors.red : Colors.grey,
      ),
    );
  }
}
