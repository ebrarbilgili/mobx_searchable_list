enum ServicePath { BASEURL }

extension ServicePathExtension on ServicePath {
  String get values {
    switch (this) {
      case ServicePath.BASEURL:
        return 'https://jsonplaceholder.typicode.com';

      default:
        throw Exception();
    }
  }
}
