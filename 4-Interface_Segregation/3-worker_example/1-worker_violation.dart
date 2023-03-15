abstract class WorkerInterface {
  void work();
  void sleep();
}

class HumanWorker implements WorkerInterface {
  @override
  void work() {
    print('works');
  }

  @override
  void sleep() {
    print('sleep');
  }
}

class RobotWorker implements WorkerInterface {
  @override
  void work() {
    print('works');
  }

  @override
  void sleep() {
    // No need
  }
}
