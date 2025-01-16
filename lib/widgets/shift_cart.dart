
import 'package:flutter/material.dart';

class ShiftCard extends StatelessWidget {
  final String shiftName;
  final String startTime;
  final String endTime;

  const ShiftCard({
    Key? key,
    required this.shiftName,
    required this.startTime,
    required this.endTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                shiftName,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Jam Masuk: $startTime',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Jam Selesai: $endTime',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan logika untuk Clock In
                    },
                    child: Text('Clock In'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan logika untuk Clock Out
                    },
                    child: Text('Clock Out'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
