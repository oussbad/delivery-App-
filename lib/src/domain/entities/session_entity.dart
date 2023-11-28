class Session {
  final int? id;
  final String? token;
  final DateTime? expiredAt;

  const Session({
    this.id,
    this.token,
    this.expiredAt,
  });
}
