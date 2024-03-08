class MessageDetailEntity {
  final String? message;
  final DateTime? timestamp;
  final bool? isMe;

  const MessageDetailEntity({
    this.message,
    this.timestamp,
    this.isMe,
  });
}
