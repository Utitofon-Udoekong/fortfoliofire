enum Status {
  processing,
  success,
  failed,
}

extension CustomString on Status {
  String toCustomString() {
    switch (this) {
      case Status.processing:
        return 'PROCESSING';
      case Status.success:
        return 'SUCCESS';
      case Status.failed:
        return 'FAILED';
      default:
        return 'Unknown';
    }
  }
}
