import 'package:assignment/data/response/status.dart';
import 'package:equatable/equatable.dart';

class ApiResponse<T> extends Equatable {
  final Status status;
  final T? data;
  final String? message;

  const ApiResponse._({required this.status, this.data, this.message});

  const ApiResponse.loading() : this._(status: Status.loading);

  const ApiResponse.completed(T data) : this._(status: Status.completed, data: data);

  const ApiResponse.error(String message) : this._(status: Status.error, message: message);

  @override
  List<Object?> get props => [status, data, message];


  @override
  String toString() {
    return "Status: $status\nMessage: $message\nData: $data";
  }
}