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
    name: 'Front-end Development',
    icon: 'assets/icons/webpage.svg',
    description:
        "Crafting dynamic, user-centric web applications with cutting-edge technologies.",
    tool: ['ReactJS | TS | Flutter'],
  ),
  ServicesUtils(
    name: "Mobile Development",
    icon: 'assets/icons/apps.svg',
    description:
        "Building intuitive mobile experiences with clean interfaces that seamlessly align with user needs and behaviors",
    tool: ['Flutter | Dart'],
  ),
  ServicesUtils(
    name: 'Back-end Development',
    icon: 'assets/icons/database.svg',
    description:
        "Building the foundation that powers your app, ensuring smooth, fast, and reliable performance every time.",
    tool: ['Node | Java | Firebase | Dart'],
  ),
];
