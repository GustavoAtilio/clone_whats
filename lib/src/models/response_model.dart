// ignore_for_file: public_member_api_docs, sort_constructors_first
class ResponseModel<T> {
  T model;
  bool isError;
  String messageError;
  ResponseModel({
    required this.model,
    required this.isError,
    required this.messageError,
  });
}
