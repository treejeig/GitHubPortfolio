class Project {
  String name;
  String assetName;
  String? browseCodeLink;
  String? liveDemoLink;

  Project(
      {required this.name,
      required this.assetName,
      this.browseCodeLink,
      this.liveDemoLink});
}
