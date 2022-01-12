class NewsModel {
  final String imageAsset;
  final String title;
  final String description;

  NewsModel(
      {required this.imageAsset,
      required this.description,
      required this.title});
}

List<NewsModel> news = <NewsModel>[
  NewsModel(
      imageAsset: "images/welcome.png",
      description:
          "We have a range of available plans to help you choose what you want to invest in.",
      title: "Amazing Deals & Offer by Company Placeholder"),
  NewsModel(
      imageAsset: "images/welcome.png",
      description:
          "We have a range of available plans to help you choose what you want to invest in.",
      title: "Amazing Deals & Offer by Company Placeholder"),
  NewsModel(
      imageAsset: "images/welcome.png",
      description:
          "We have a range of available plans to help you choose what you want to invest in.",
      title: "Amazing Deals & Offer by Company Placeholder"),
  
];
