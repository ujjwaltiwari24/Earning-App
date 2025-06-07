import 'package:flutter/material.dart';

void main() {
  runApp(const EarningApp());
}

class EarningApp extends StatelessWidget {
  const EarningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Earning App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF001F3F), // Dark blue primary color
        scaffoldBackgroundColor: const Color(0xFF001F3F), // Dark blue background
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: const Color(0xFF001F3F),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white60,
          elevation: 10,
        ),
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = [
    const HomeScreen(),
    const EarnScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.monetization_on), label: "Earn"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

// 🌟 Home Screen UI with Professional Design
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final String dummyName = "Ujjwal";
  final int dummyCoins = 1500;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF001F3F), Color(0xFF003366)], // Dark blue gradient
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 🧠 Header Card with Professional Look
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: const LinearGradient(
                      colors: [Color(0xFF004B8D), Color(0xFF0074D9)], // Smooth blue gradient
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 12,
                        offset: const Offset(2, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("👋 Hi, $dummyName",
                          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                      Row(
                        children: [
                          const Icon(Icons.monetization_on, color: Colors.amber, size: 26),
                          const SizedBox(width: 6),
                          Text(
                            "$dummyCoins",
                            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                const Text(
                  "Kamao Money",
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700, color: Colors.white),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Complete tasks to win rewards!",
                  style: TextStyle(fontSize: 24, color: Color.fromARGB(179, 255, 255, 255)),
                ),

                const SizedBox(height: 20),

                // 🔘 Feature Cards
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 18,
                    mainAxisSpacing: 18,
                    children: const [
                      FeatureCard(title: "Scratch Card", icon: Icons.money, color: Color.fromARGB(255, 169, 242, 255)),
                      FeatureCard(title: "Spin & Win", icon: Icons.casino, color: Color.fromARGB(255, 169, 242, 255)),
                      FeatureCard(title: "Refer & Earn", icon: Icons.group, color: Color.fromARGB(255, 169, 242, 255)),
                      FeatureCard(title: "Watch Ads", icon: Icons.play_circle_fill, color: Color.fromARGB(255, 169, 242, 255)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// 🔥 Feature Card Widget
class FeatureCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const FeatureCard({super.key, required this.title, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Implement navigation
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [color.withOpacity(0.9), color.withOpacity(0.6)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.4),
              blurRadius: 10,
              offset: const Offset(3, 3),
            ),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 50, color: Colors.white),
              const SizedBox(height: 12),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 💰 Earn Screen
class EarnScreen extends StatelessWidget {
  const EarnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("💰 Earn Section", style: TextStyle(fontSize: 22, color: Colors.white)),
    );
  }
}

// 👤 Profile Screen
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("👤 Profile Page", style: TextStyle(fontSize: 22, color: Colors.white)),
    );
  }
}