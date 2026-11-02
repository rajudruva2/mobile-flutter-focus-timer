import 'package:flutter/material.dart';

      void main() => runApp(const DemoApp());

      class DemoApp extends StatelessWidget {
        const DemoApp({super.key});

        static const Color accent = Color(0xFF1565C0);

        @override
        Widget build(BuildContext context) {
          return MaterialApp(
            title: 'Focus Timer',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: accent),
              useMaterial3: true,
            ),
            home: const DemoHomePage(),
          );
        }
      }

      class DemoHomePage extends StatelessWidget {
        const DemoHomePage({super.key});

        static const List<Map<String, String>> entries = [
          {'title': 'Focus block', 'detail': '25 minutes'},
{'title': 'Short break', 'detail': '5 minutes'},
{'title': 'Long break', 'detail': '15 minutes'}
        ];

        @override
        Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Focus Timer'),
              backgroundColor: DemoApp.accent.withOpacity(0.12),
            ),
            body: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Card(
                  color: DemoApp.accent.withOpacity(0.08),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Focus Timer',
                          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text('Small steps toward focused work'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                ...entries.map((entry) => Card(
                  child: ListTile(
                    leading: const CircleAvatar(
                      child: Icon(Icons.timer),
                    ),
                    title: Text(entry['title']!),
                    subtitle: Text(entry['detail']!),
                    trailing: const Icon(Icons.chevron_right),
                  ),
                )),
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Demo app · sample data only',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        }
      }
