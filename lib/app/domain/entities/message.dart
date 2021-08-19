class Message {
  final String text;
  final DateTime date;

  Message({required this.text, required this.date});

  factory Message.fromJson(Map<dynamic, dynamic> json) => Message(
        text: json['text'] as String,
        date: DateTime.parse(json['date'] as String),
      );

  Map<dynamic, dynamic> toJson() => {
        'text': text,
        'date': date.toString(),
      };
}
