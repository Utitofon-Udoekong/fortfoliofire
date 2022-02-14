class OnboardingModel {
  final String imageAsset;
  final String title;
  final String description;

  OnboardingModel(
      {required this.imageAsset,
      required this.description,
      required this.title});
}

List<OnboardingModel> onboarding = <OnboardingModel>[
  OnboardingModel(
      imageAsset: "images/select.png",
      description:
          "We have a range of available plans to help you choose what you want to invest in.",
      title: "Choose an investment plan"),
  OnboardingModel(
      imageAsset: "images/savings.png",
      description:
          "Proceed to make payment for the selected investment plan using your preferred payment gateway",
      title: "Make complete payment"),
  OnboardingModel(
      imageAsset: "images/analytics.png",
      description:
          "Proceed to make payment for the selected investment plan using your preferred payment gateway",
      title: "Make complete payment"),
];
