sealed class Result<T> {
  const Result();

  const factory Result.success(T value) = Success;
  const factory Result.failed(String message) = Failed;

  // method to check if the object is Success or Failed
  bool get isSuccess => this is Success<T>;
  bool get isFailed => this is Failed<T>;

  // get result
  T? get resultValue => isSuccess ? (this as Success<T>).value : null;

  // get error message
  String? get errorMessage => isFailed ? (this as Failed<T>).message : null;
}

class Success<T> extends Result<T> {
  final T value;

  const Success(this.value);
}

class Failed<T> extends Result<T> {
  final String message;

  const Failed(this.message);
}

Result<double> divideNumbers(double a, double b) {
  if (b == 0) {
    return Result.failed("Division by zero is not allowed.");
  }
  return Result.success(a / b);
}
