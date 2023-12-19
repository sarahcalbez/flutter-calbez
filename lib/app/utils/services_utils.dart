
class ServicesUtils {
  final String name;
  final String icon;
  final List<String> tool;
  final String description;

  ServicesUtils(
      {required this.name,
      required this.icon,
      required this.description,
      required this.tool});
}

List<ServicesUtils> servicesUtils = [
  ServicesUtils(
    name: "iOS and Android App's",
    icon: 'assets/icons/apps.svg',
    description:
        "The art of making technology dance to the rhythm of the user needs.",
    tool: ['Flutter | Dart'],
  ),
  ServicesUtils(
    name: 'Web Development',
    icon: 'assets/icons/webpage.svg',
    description:
        "Responsive designs and the best technologies available.",
    tool: ['ReactJS | TS | Flutter'],
  ),
  ServicesUtils(
    name: 'Back-end Development',
    icon: 'assets/icons/database.svg',
    description:
        "Here is where the magic comes true and I make everything possible.",
    tool: ['Firebase | Dart'],
  ),
];
