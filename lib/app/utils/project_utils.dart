class ProjectUtils {
  final String banners;
  final String titles;
  final String description;
  final String links;
  ProjectUtils({
    required this.banners,
    required this.titles,
    required this.description,
    required this.links,
  });
}

List<ProjectUtils> projectUtils = [
  ProjectUtils(
    banners: 'assets/img/02.png',
    titles: 'SmartBank',
    description:
        'This is a React-based app that simulates a bank account interface, including functionalities for account balance, transaction history, and theme switching between light and dark modes.',
    links: 'https://github.com/sarahcalbez/smart_bank',
  ),
  ProjectUtils(
    banners: 'assets/img/1.png',
    titles: 'Social Media',
    description:
        'This is React-based social media app featuring posts, comments, avatars, and interaction features such as applauding and deleting comments.',
    links: 'https://github.com/sarahcalbez/social_media_reactjs',
  ),
  ProjectUtils(
    banners: 'assets/img/03.png',
    titles: 'Task Timer',
    description:
        'This is a React-based application designed to help users track and manage tasks with a built-in timer. Users can create tasks, set time limits, and track time spent on each task, with the option to mark tasks as completed.',
    links: 'https://github.com/sarahcalbez/task_timer_react',
  ),
  ProjectUtils(
    banners: 'assets/img/04.png',
    titles: 'Awesome Plant App UI',
    description:
        'This is a just Plant App UI by using flutter, source code is also available, check below.',
    links: 'https://github.com/sarahcalbez',
  ),
];
