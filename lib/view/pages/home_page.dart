import 'package:flutter/material.dart';
import 'package:flutter_jobapp/constants/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: deepBlue,
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Find Your Perfect Job',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: deepBlue,
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search for jobs',
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(Icons.search, color: softGray),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: const [
                  JobCard(company: 'Google', position: 'Flutter Developer', salary: '\$1500'),
                  JobCard(company: 'Amazon', position: 'UI/UX Designer', salary: '\$1200'),
                  JobCard(company: 'Microsoft', position: 'React Developer', salary: '\$1700'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class JobCard extends StatelessWidget {
  final String company;
  final String position;
  final String salary;

  const JobCard({super.key, 
    required this.company,
    required this.position,
    required this.salary,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  company,
                  style: const TextStyle(fontWeight: FontWeight.bold, color: deepBlue),
                ),
                const SizedBox(height: 4),
                Text(position),
              ],
            ),
            Text(
              salary,
              style: const TextStyle(fontWeight: FontWeight.bold, color: deepBlue),
            ),
          ],
        ),
      ),
    );
  }
}