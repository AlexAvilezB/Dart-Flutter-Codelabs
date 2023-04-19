typedef VoidFunction = void Function();

class ExceptionWithMessage {
  final String message;
  const ExceptionWithMessage(this.message);
}

abstract class Logger {
  void logException(Type t, [String? msg]);
  void doneLogging();
}

void tryFunction(VoidFunction untrustworthy, Logger logger) {
  try {
    untrustworthy();
  } on ExceptionWithMessage catch (e) {
    logger.logException(e.runtimeType, e.message);
  } on Exception {
    logger.logException(Exception);
  } finally {
    logger.doneLogging();
  }
}

// Implementar logger

class MyLogger implements Logger {
  @override
  void logException(Type t, [String? msg]) {
    print('Exception caught: $t, Message: $msg');
  }

  @override
  void doneLogging() {
    print('Logging completed');
  }
}

void untrustworthyFunction() {
  throw ExceptionWithMessage('This function is not trustworthy!');
}

void main() {
  final logger = MyLogger();
  tryFunction(untrustworthyFunction, logger);
}
