class Designer {
  final String name;
  final String yearsExperience;
  final String handledProjects;
  final String location;

  final String noOfClients;
  final String about;
  final String picPath;
  final List<dynamic> portfolioPath;
  final List<String> socials = [];

  Designer({
    required this.name,
    required this.location,
    required this.about,
    this.handledProjects = '1',
    this.noOfClients = '1',
    this.picPath = '',
    this.yearsExperience = '1',
    required this.portfolioPath,
  });

  factory Designer.fromJson(Map json) => Designer(
        about: json["About"],
        name: json['name'],
        location: json['Based in'],
        handledProjects: json["handled projects"],
        noOfClients: json["clients"],
        picPath: json["path to pic"],
        portfolioPath: json["paths to portfolio"],
        yearsExperience: json["years of experience"],
      );
}
