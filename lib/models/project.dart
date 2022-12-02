class Project {
  String name;
  String? assetName;
  String? browseCodeLink;
  String? liveDemoLink;
  bool showBrowseCodeButton;
  bool showLiveDemoButton;

  Project(
      {required this.name,
      this.assetName,
      this.browseCodeLink,
      this.liveDemoLink,
      this.showBrowseCodeButton=true,
      this.showLiveDemoButton=true});
}
