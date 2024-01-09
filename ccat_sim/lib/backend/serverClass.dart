import 'package:ccat_sim/backend/localServer.dart';

import '../classes/questionClass.dart';

class ServerClass {
  List<Question> getServerQuestions() {
    return LocalServer().questions;
  }
}
