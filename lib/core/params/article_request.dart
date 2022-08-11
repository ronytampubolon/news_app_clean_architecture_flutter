import 'package:barita/config/constants.dart';

class NewsRequestParams {
  final String apiKey;
  final String country;
  final String category;
  final String? query;
  final int page;
  final int pageSize;

  NewsRequestParams(
      {this.apiKey = kAPIKEY,
      this.country = "id",
      this.query,
      this.category = "",
      this.page = 1,
      this.pageSize = 10});
}
