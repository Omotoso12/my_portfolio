class ProjectSet {
  final String title;
  final String imageASSET;
  final String subTitle;

  const ProjectSet({
    required this.title,
    required this.imageASSET,
    required this.subTitle,
  });
}

final List<ProjectSet> proData = [
  const ProjectSet(
    title: 'AGRO EXCHANGE',
    imageASSET: 'assets/agro.png',
    subTitle: '| DART   | FLUTTER   | FIREBASE',
  ),
  const ProjectSet(
    title: 'SPACE CHALLENGE',
    imageASSET: 'assets/space.png',
    subTitle: '| DART   | FLUTTER   | FLAME'
  ),
   const ProjectSet(
    title: 'SHADOW ANIME',
    imageASSET: 'assets/shadow.png',
    subTitle: '| DART   | FLUTTER   | FIREBASE'
  ),
   const ProjectSet(
    title: 'PING BOUNCE',
    imageASSET: 'assets/bounce.png',
    subTitle: '| DART   | FLUTTER   | FLAME'
  ),  
];