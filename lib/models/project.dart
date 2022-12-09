class Project {
  String name;
  String? assetName;
  String? playStoreLink;
  String? browseCodeLink;
  String? liveDemoLink;
  bool showPlayStoreButton;
  bool showBrowseCodeButton;
  bool showLiveDemoButton;

  Project(
      {required this.name,
      this.assetName,
      this.playStoreLink,
      this.browseCodeLink,
      this.liveDemoLink,
      this.showPlayStoreButton=false,
      this.showBrowseCodeButton=true,
      this.showLiveDemoButton=true});
}
