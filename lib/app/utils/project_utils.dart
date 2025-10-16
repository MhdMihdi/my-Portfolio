class ProjectUtils {
  final String banners;
  final String icons;
  final String titles;
  final String description;
  final String? links;
  ProjectUtils({
    required this.banners,
    required this.icons,
    required this.titles,
    required this.description,
    required this.links,
  });
}

List<ProjectUtils> projectUtils = [
  ProjectUtils(
    banners: 'assets/imgs/alKamal_logo.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'AlKamal Transportation',
    description:
        'Cross-Border Bus Booking & logistics System,\nA complete system for bus booking and logistics between Syria and Jordan.',
    links: 'https://alkamal.apk.com/',
  ),
  ProjectUtils(
    banners: 'assets/imgs/capital_estate.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Capital Estate',
    description:
    'Advanced Real Estate System, \nProperty management app for searching and purchasing real estate.',
    links: null,
  ),
  ProjectUtils(
    banners: 'assets/imgs/dev_space.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'DevSpace',
    description:
    'Social Media Application for Developers, \nA social networking app aimed at developers to share issues, ideas, and collaborate.',
    links: 'https://github.com/MhdMihdi/Social_Media.git',
  ),
  ProjectUtils(
    banners: 'assets/imgs/disc.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Disc',
    description:
        'Digital Consulting Application, \nA platform to connect users with expert consultants for various issues.',
    links: null,
  ),
];
