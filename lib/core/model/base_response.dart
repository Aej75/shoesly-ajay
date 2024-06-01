class ApiReponse<T> {
  final bool success;
  final String message;
  final T? data;
  ApiReponse(
      {required this.success, required this.message, required this.data});
}

typedef ApiResponseList<T> = ApiReponse<List<T>>;
