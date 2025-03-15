class YesNoAnswer {
  final String answer;
  final bool forced;
  final String image;

  YesNoAnswer({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory YesNoAnswer.fromJson(Map<String, dynamic> json) => YesNoAnswer(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
      };
}
