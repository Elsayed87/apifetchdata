class FinalFuterModel {
  final List<FuteromaModel> futerList;

  FinalFuterModel({required this.futerList});
  factory FinalFuterModel.fromJson(json) {
    return FinalFuterModel(futerList: getModelList(json));
  }
  static List<FuteromaModel> getModelList(List<dynamic> list) {
    List<FuteromaModel> dataList =
        list.map((e) => FuteromaModel.fromJson(e)).toList();
    return dataList;
  }
}

class FuteromaModel {
  final String synopsis;
  final String yearsAired;
  final int id;
  final List<CreatorsModel> creatorList;

  FuteromaModel(
      {required this.synopsis,
      required this.yearsAired,
      required this.id,
      required this.creatorList});
  factory FuteromaModel.fromJson(json) {
    return FuteromaModel(
        synopsis: json['synopsis'],
        yearsAired: json['yearsAired'],
        id: json['id'],
        creatorList: getList(json['creators']));
  }
  static List<CreatorsModel> getList(List<dynamic> list) {
    List<CreatorsModel> creatorList =
        list.map((e) => CreatorsModel.fromJson(e)).toList();
    return creatorList;
  }
}

class CreatorsModel {
  final String name;
  final String url;

  CreatorsModel({required this.name, required this.url});
  factory CreatorsModel.fromJson(json) {
    return CreatorsModel(name: json['name'], url: json['url']);
  }
}
// [
// {
// "synopsis": "Philip J. Fry is a 25 year old delivery boy living in New York City who is cryogenically frozen on New Year's 1999 for 1000 years, where he wakes up in New New York City on December 31, 2999. There, he meets Turanga Leela, a tough but loving, beautiful one-eyed alien; and Bender, an alcohol-powered bending robot who is addicted to liquor, cigars, stealing, amongst other things. Eventually, they all meet up with Fry's Great, Great, Great, etc... Nephew, Hubert J. Farnsworth. Farnsworth is a very old man who is a genius but is very senile and forgetful. Fry, Leela, and Bender wind up working for Farnsworth's Planet Express Delivery Service. They then meet their co-workers; Amy Wong, who is a Martian intern who comes from a rich family, but is still a human who is very hip. Also, there is Hermes Conrad, who manages the delivery service and is pretty strict. Hermes seems Jamaican in voice and look. And finally, there's Dr. John Zoidberg, a lobster-like alien who is the crew's doctor. Unfortunately, he knows nothing about humans. Fry, Leela, Bender, and sometimes Amy and Dr. Zoidberg travel around the universe risking life and limb delivering packages and performing charitable tasks for tax deductions.",
// "yearsAired": "1999–2013",
// "creators": [
// {
// "name": "David X. Cohen",
// "url": "http://www.imdb.com/name/nm0169326"
// },
// {
// "name": "Matt Groening",
// "url": "http://www.imdb.com/name/nm0004981"
// }
// ],
// "id": 1
// }
// ]