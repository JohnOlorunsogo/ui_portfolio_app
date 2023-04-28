class Designer {
  final String name;
  final String yearsExperience;
  final String handledProjects;
  final String location;

  final String noOfClients;
  final String about;
  final String picPath;
  final String portfolioPath;
  final List<String> socials = [];

  Designer({
    required this.name,
    required this.location,
    required this.about,
    this.handledProjects = '1',
    this.noOfClients = '1',
    this.picPath = '',
    this.yearsExperience = '1',
    this.portfolioPath = '',
  });

  Designer.fromJson(Map json) => Designer(about: json[]);
}
