class EntidadSiONo {
  final String answer;
  final bool forced;
  final String image;
  EntidadSiONo(
      {required this.answer, required this.forced, required this.image});

  factory EntidadSiONo.fromJsonMap(Map<String, dynamic> json) => EntidadSiONo(
      answer: json['answer'], forced: json['forced'], image: json['image']);
}
