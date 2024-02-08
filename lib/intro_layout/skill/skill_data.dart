class SkillSet {
  final String name;
  final String imageASSET;
  final String experience;

  const SkillSet({
    required this.name,
    required this.imageASSET,
    required this.experience
  });
}

final List<SkillSet> setData = [
  const SkillSet(
    name: 'Dart     ',
    imageASSET: 'assets/ldart.png',
    experience: '3 years experience',
  ),
  const SkillSet(
    name: 'Python   ',
    imageASSET: 'assets/lpython.png',
    experience: '3 years experience'
  ),
   const SkillSet(
    name: 'Figma    ',
    imageASSET: 'assets/lfigma.png',
    experience: '1 years experience'
  ),
   const SkillSet(
    name: 'Andriod  ',
    imageASSET: 'assets/landriod.png',
    experience: '2 years experience'
  ),
  const SkillSet(
    name: 'Photoshop',
    imageASSET: 'assets/lphotoshop.png',
    experience: '5 years experience'
  ),
];