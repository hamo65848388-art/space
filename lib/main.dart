
import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';

void main() {
  runApp(const SolarSystemApp());
}

const Color backgroundColor = Color(0xFF0E0E0E);
const Color redColor = Color(0xFFEE403D);
const Color whiteColor = Colors.white;

class Planet {
  final String name;
  final String image;
  final String model;
  final String title;
  final String about;
  final String distance;
  final String day;
  final String orbitalPeriod;
  final String radius;
  final String mass;
  final String gravity;
  final String surfaceArea;

  const Planet({
    required this.name,
    required this.image,
    required this.model,
    required this.title,
    required this.about,
    required this.distance,
    required this.day,
    required this.orbitalPeriod,
    required this.radius,
    required this.mass,
    required this.gravity,
    required this.surfaceArea,
  });
}

const String sunAbout =
    "The Sun is the heart of our solar system, a massive ball of plasma "
    "that provides heat, light, and energy to everything within its "
    "gravitational pull. Its immense size and temperature are fueled by "
    "nuclear fusion, a process that combines hydrogen atoms into helium, "
    "releasing vast amounts of energy. The Sun's magnetic field, which is "
    "constantly changing, influences solar activity like sunspots and "
    "solar flares, affecting space weather and potentially disrupting "
    "Earth-based technologies.";

const List<Planet> planets = [
  Planet(
    name: "Sun",
    image: "assets/images/sun.png",
    model: "assets/models/sun.glb",
    title: "The Sun: Our Solar System's Star",
    about: sunAbout,
    distance: "0",
    day: "0",
    orbitalPeriod: "0",
    radius: "695,700",
    mass: "1.989 × 10³⁰",
    gravity: "274",
    surfaceArea: "6.09 × 10¹²",
  ),
  Planet(
    name: "Mercury",
    image: "assets/images/mercury.png",
    model: "assets/models/mercury.glb",
    title: "Mercury: The Closest Planet",
    about: sunAbout,
    distance: "57,909,227",
    day: "1,407.60",
    orbitalPeriod: "0.24",
    radius: "2,439.70",
    mass: "3.301 × 10²³",
    gravity: "3.7",
    surfaceArea: "7.48 × 10⁷",
  ),
  Planet(
    name: "Venus",
    image: "assets/images/venus.png",
    model: "assets/models/venus.glb",
    title: "Venus: Earth's Toxic Twin",
    about: "Venus is often referred to as Earth's twin due to its similar "
        "size and composition. However, its thick atmosphere, composed "
        "primarily of carbon dioxide, traps heat, making it the hottest "
        "planet in our solar system. This greenhouse effect has created "
        "a hostile environment with temperatures hot enough to melt lead. "
        "Venus is also shrouded in a thick layer of sulfuric acid clouds, "
        "which reflect sunlight and give it a yellowish appearance.",
    distance: "108,209,072",
    day: "5,832.20",
    orbitalPeriod: "0.62",
    radius: "6,051.80",
    mass: "4.867 × 10²⁴",
    gravity: "8.87",
    surfaceArea: "4.60 × 10⁸",
  ),
  Planet(
    name: "Earth",
    image: "assets/images/earth.png",
    model: "assets/models/earth.glb",
    title: "Earth: Our Blue Marble",
    about: "Earth is the only known planet in the universe that supports "
        "life. Its unique combination of factors, including liquid water, "
        "a breathable atmosphere, and a suitable distance from the Sun, "
        "has created the ideal conditions for the development of complex "
        "organisms. Earth's magnetic field protects it from harmful solar "
        "radiation, and its atmosphere helps to regulate temperature and "
        "weather patterns.",
    distance: "149,598,026",
    day: "23.93",
    orbitalPeriod: "1",
    radius: "6,371",
    mass: "5.972 × 10²⁴",
    gravity: "9.81",
    surfaceArea: "5.10 × 10⁸",
  ),
  Planet(
    name: "Mars",
    image: "assets/images/mars.png",
    model: "assets/models/mars.glb",
    title: "Mars: The Red Planet",
    about: "Mars, often called the Red Planet due to its reddish hue "
        "caused by iron oxide, is a cold, rocky world with a thin "
        "atmosphere. It has polar ice caps, ancient riverbeds, and "
        "evidence of past volcanic activity, suggesting that it once "
        "had a warmer, wetter climate. Mars is a prime target for "
        "exploration due to its potential for past or present life, "
        "and NASA's Perseverance rover is currently searching for signs "
        "of ancient microbial life on the planet's surface.",
    distance: "227,943,824",
    day: "24.62",
    orbitalPeriod: "1.88",
    radius: "3,389.50",
    mass: "6.39 × 10²³",
    gravity: "3.71",
    surfaceArea: "1.45 × 10⁸",
  ),
  Planet(
    name: "Jupiter",
    image: "assets/images/jupiter.png",
    model: "assets/models/jupiter.glb",
    title: "Jupiter: The Gas Giant",
    about: "Jupiter is the largest planet in our solar system, a gas "
        "giant composed primarily of hydrogen and helium. Its Great Red "
        "Spot, a massive storm that has been raging for centuries, is a "
        "testament to its turbulent atmosphere. Jupiter has a strong "
        "magnetic field and numerous moons, including Europa, which is "
        "believed to have a subsurface ocean that could potentially "
        "harbor life.",
    distance: "778,547,669",
    day: "9.92",
    orbitalPeriod: "11.86",
    radius: "69,911",
    mass: "1.898 × 10²⁷",
    gravity: "24.79",
    surfaceArea: "6.21 × 10¹⁵",
  ),
  Planet(
    name: "Saturn",
    image: "assets/images/saturn.png",
    model: "assets/models/saturn.glb",
    title: "Saturn: The Ringed Planet",
    about: "Saturn is best known for its spectacular rings, which are "
        "composed of countless ice particles and rocks. It is a gas "
        "giant with a composition similar to Jupiter, but its rings and "
        "moons give it a distinct appearance. Saturn's largest moon, "
        "Titan, has a thick atmosphere and is the only known celestial "
        "body outside of Earth with liquid lakes and rivers.",
    distance: "1,426,666,422",
    day: "10.66",
    orbitalPeriod: "29.46",
    radius: "58,232",
    mass: "5.683 × 10²⁶",
    gravity: "10.44",
    surfaceArea: "4.27 × 10¹⁵",
  ),
  Planet(
    name: "Uranus",
    image: "assets/images/uranus.png",
    model: "assets/models/uranus.glb",
    title: "Uranus: The Tilted Planet",
    about: "Uranus is an ice giant with a unique axial tilt, causing "
        "its seasons to be extreme. It is surrounded by faint rings "
        "and has numerous moons, including Miranda, known for its "
        "chaotic terrain. Uranus's atmosphere is composed primarily "
        "of hydrogen, helium, and methane, giving it a pale blue color.",
    distance: "2,870,990,000",
    day: "17.24",
    orbitalPeriod: "84.01",
    radius: "25,362",
    mass: "8.681 × 10²⁵",
    gravity: "8.69",
    surfaceArea: "8.1 × 10¹⁵",
  ),
  Planet(
    name: "Neptune",
    image: "assets/images/neptune.png",
    model: "assets/models/neptune.glb",
    title: "Neptune: The Distant World",
    about: "Neptune is the farthest planet from the Sun and is another "
        "ice giant. Its atmosphere is similar to Uranus, but it is a "
        "deeper blue color due to the presence of methane. Neptune has "
        "several moons, including Triton, which orbits the planet in "
        "a retrograde direction and is believed to be a captured "
        "Kuiper Belt object.",
    distance: "4,498,252,900",
    day: "16.11",
    orbitalPeriod: "164.8",
    radius: "24,622",
    mass: "1.024 × 10²⁶",
    gravity: "11.15",
    surfaceArea: "7.65 × 10¹⁵",
  ),
];

class SolarSystemApp extends StatelessWidget {
  const SolarSystemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Explore The Universe",
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        colorScheme: const ColorScheme.dark(
          primary: redColor,
          surface: backgroundColor,
        ),
      ),
      home: const WelcomeScreen(),
    );
  }
}

// SCREEN ZERO

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              planets[4].image,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.05),
                    Colors.black.withOpacity(0.9),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Route Mobile Diploma",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "Explore\nThe\nUniverse",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: whiteColor,
                      height: 1.05,
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: redColor,
                        foregroundColor: whiteColor,
                        shape: const StadiumBorder(),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const ExploreScreen(),
                          ),
                        );
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Explore"),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
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
}

// SCREEN ONE

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  late PageController pageController;
  int selectedIndex = 3;

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: selectedIndex,
      viewportFraction: 0.86,
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void changePlanet(int index) {
    if (index < 0 || index >= planets.length) return;

    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  void openDetails() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => PlanetDetailsScreen(
          planet: planets[selectedIndex],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final planet = planets[selectedIndex];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 16,
          ),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Explore",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 35),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: const Color(0xFF171717),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Text(
                  "Which planet would you like to explore?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Expanded(
                child: PageView.builder(
                  controller: pageController,
                  itemCount: planets.length,
                  onPageChanged: (index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    final item = planets[index];

                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 10,
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(
                              item.image,
                              fit: BoxFit.contain,
                              width: double.infinity,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            item.name,
                            style: const TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 15),

              SizedBox(
                height: 65,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: planets.length,
                  itemBuilder: (context, index) {
                    final isSelected = selectedIndex == index;

                    return GestureDetector(
                      onTap: () => changePlanet(index),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 250),
                        width: isSelected ? 65 : 53,
                        height: 60,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? whiteColor
                              : const Color(0xFF191919),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Image.asset(
                          planets[index].image,
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 18),

              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: redColor,
                    child: IconButton(
                      onPressed: () {
                        changePlanet(selectedIndex - 1);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: whiteColor,
                      ),
                    ),
                  ),

                  const Spacer(),

                  Text(
                    planet.name,
                    style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const Spacer(),

                  CircleAvatar(
                    backgroundColor: redColor,
                    child: IconButton(
                      onPressed: () {
                        changePlanet(selectedIndex + 1);
                      },
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: whiteColor,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: redColor,
                    foregroundColor: whiteColor,
                    shape: const StadiumBorder(),
                  ),
                  onPressed: openDetails,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(width: 20),
                      Text(
                        "Explore ${planet.name}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// SCREEN TWO

class PlanetDetailsScreen extends StatefulWidget {
  final Planet planet;

  const PlanetDetailsScreen({
    super.key,
    required this.planet,
  });

  @override
  State<PlanetDetailsScreen> createState() =>
      _PlanetDetailsScreenState();
}

class _PlanetDetailsScreenState extends State<PlanetDetailsScreen> {
  late Flutter3DController controller;

  @override
  void initState() {
    super.initState();
    controller = Flutter3DController();
  }

  @override
  Widget build(BuildContext context) {
    final planet = widget.planet;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Image background and title

            Container(
              height: 210,
              width: double.infinity,
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage(planet.image),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.35),
                    BlendMode.darken,
                  ),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 12,
                    left: 12,
                    child: CircleAvatar(
                      radius: 17,
                      backgroundColor: redColor,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 19,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),

                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          planet.name,
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          planet.title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16,
                            color: whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Planet image

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        planet.image,
                        height: 170,
                        fit: BoxFit.contain,
                      ),
                    ),

                    const SizedBox(height: 12),

                    const Text(
                      "About",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    Text(
                      planet.about,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.white70,
                        height: 1.5,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // 3D Model

                    const Text(
                      "3D Model",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Container(
                      height: 280,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xFF171717),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Flutter3DViewer(
                        controller: controller,
                        src: planet.model,
                        activeGestureInterceptor: true,
                        enableTouch: true,
                        progressBarColor: redColor,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Planet information

                    const Text(
                      "Details",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 12),

                    detailItem(
                      "Distance from Sun (km)",
                      planet.distance,
                    ),
                    detailItem(
                      "Length of Day (hours)",
                      planet.day,
                    ),
                    detailItem(
                      "Orbital Period (Earth years)",
                      planet.orbitalPeriod,
                    ),
                    detailItem(
                      "Radius (km)",
                      planet.radius,
                    ),
                    detailItem(
                      "Mass (kg)",
                      planet.mass,
                    ),
                    detailItem(
                      "Gravity (m/s²)",
                      planet.gravity,
                    ),
                    detailItem(
                      "Surface Area (km²)",
                      planet.surfaceArea,
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget detailItem(String title, String value) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 9),
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 13,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF191919),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white70,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            value,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
