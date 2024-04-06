class Message {
  final String text;
  final String? imageUrl;
  final FromWho owner;

  Message({required this.text, this.imageUrl, required this.owner});
}

enum FromWho { me, other }