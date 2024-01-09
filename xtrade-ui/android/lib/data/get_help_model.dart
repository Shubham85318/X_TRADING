class GetHelpModel {
  String title;
  String description;

  GetHelpModel({required this.title, required this.description});
}

List<GetHelpModel> getHelpContents = [
  GetHelpModel(
      title: "Trading account",
      description: "How to open account, account types, deposits, withdrawals"),
  GetHelpModel(
      title: "Instruments",
      description: "All about trading conditions, order execution, rollovers etc."),
  GetHelpModel(
      title: "Our platforms",
      description: "Discover out award wining xStation platform, mobile app and MT4"),
  GetHelpModel(
      title: "Partnership",
      description: "Our Affiliate and IB program explained")
];
