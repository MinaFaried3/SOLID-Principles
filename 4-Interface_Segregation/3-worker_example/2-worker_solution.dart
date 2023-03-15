abstract class WorkAbleInterface {
  void work();
}

abstract class SleepAbleInterface {
  void sleep();
}

class HumanWorker implements WorkAbleInterface, SleepAbleInterface {
  @override
  void work() {
    print('works');
  }

  @override
  void sleep() {
    print('sleep');
  }
}

class RobotWorker implements WorkAbleInterface {
  @override
  void work() {
    print('works');
  }
}
