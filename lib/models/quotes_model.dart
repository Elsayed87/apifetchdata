class FinalQuotesModel {
  final List<QuotesModel> quoteList;

  FinalQuotesModel({required this.quoteList});
  factory FinalQuotesModel.fromJson(json) {
    return FinalQuotesModel(quoteList: getListOfQuotes(json['quotes']));
  }
  static List<QuotesModel> getListOfQuotes(List<dynamic> list) {
    List<QuotesModel> FinalList =
        list.map((e) => QuotesModel.fromJson(e)).toList();
    return FinalList;
  }
}

class QuotesModel {
  final int id;
  final String quote;
  final String author;

  QuotesModel({required this.id, required this.quote, required this.author});
  factory QuotesModel.fromJson(json) {
    return QuotesModel(
        id: json['id'], quote: json['quote'], author: json['author']);
  }
}
// {
// "id": 1,
// "quote": "Life isn’t about getting and having, it’s about giving and being.",
// "author": "Kevin Kruse"
// },