class WorkExperienceUtils {
  final String company;
  final String position;
  final String location;
  final String period;
  final List<String> responsibilities;
  final List<String> technologies;
  final Map<String, String> links; // title : url

  WorkExperienceUtils({
    required this.company,
    required this.position,
    required this.location,
    required this.period,
    required this.responsibilities,
    required this.technologies,
    required this.links,
  });
}


final List<WorkExperienceUtils> workExperiences = [
  WorkExperienceUtils(
    company: 'Hemaya Online',
    position: 'Flutter Developer',
    location: 'Sharjah, UAE',
    period: '09/2025 - 11/2025 | Remote Contract',
    responsibilities: [
      'Developed and maintained the front-end of Hemaya Online, a parental control application.',
      'Implemented Clean Architecture using Flutter and BLoC for scalable and maintainable code.',
      'Integrated REST APIs for account management and internet control features.',
    ],
    technologies: [
      'Flutter',
      'BLoC',
      'Clean Architecture',
      'REST APIs',
    ],
    links: {
      'Play Store':
      'https://play.google.com/store/apps/details?id=com.hemaya.app',
      'App Store':
      'https://apps.apple.com/us/app/hemaya-online/id6753210926',
    },
  ),
];
