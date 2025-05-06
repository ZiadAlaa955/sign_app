import 'package:go_router/go_router.dart';
import 'package:tawasel/views/auth_views/verification_code_view.dart';
import 'package:tawasel/views/exam_screens/exam_screen.dart';
import 'package:tawasel/views/home_view.dart';
import 'package:tawasel/views/content_screens/learning_content_screen.dart';
import 'package:tawasel/views/content_screens/letters_content_screen.dart';
import 'package:tawasel/views/exam_screens/letters_exam_screen.dart';
import 'package:tawasel/views/auth_views/login_view.dart';
import 'package:tawasel/views/content_screens/numbers_content_screen.dart';
import 'package:tawasel/views/exam_screens/numbers_exam_screen.dart';
import 'package:tawasel/views/auth_views/password_recovery_view.dart';
import 'package:tawasel/views/profile_view.dart';
import 'package:tawasel/views/auth_views/sign_up_view.dart';
import 'package:tawasel/views/splash_view.dart';
import 'package:tawasel/views/test_screen.dart';
import 'package:tawasel/views/content_screens/words_content_screen.dart';
import 'package:tawasel/views/exam_screens/words_exam_screen.dart';
import 'package:tawasel/views/video_transelate_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kSplashView = '/splashView';
  static const kloginView = '/loginView';
  static const kLearningContentScreen = '/learningContentScreen';
  static const kLettersScreen = '/lettersScreen';
  static const kNumberScreen = '/numbersScreen';
  static const kWordsScreen = '/wordsScreen';
  static const kTestScreen = '/testScreen';
  static const kSignUpView = '/SignUpView';
  static const kProfileView = '/profileView';
  static const kExamScreen = '/examScreen';
  static const kLettersExamScreen = '/lettersExamScreen';
  static const kNumbersExamScreen = '/numbersExamScreen';
  static const kWordsExamScreen = '/wordsExamScreen';
  static const kPasswordRecoveryView = '/passwordRecoveryView';
  static const kVerificationCodeView = '/verificationCodeView';
  static const kVideoTranselateView = '/videoTranselateView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kExamScreen,
        builder: (context, state) => const ExamScreen(),
      ),
      GoRoute(
        path: kLettersExamScreen,
        builder: (context, state) => LettersExamScreen(),
      ),
      GoRoute(
        path: kWordsExamScreen,
        builder: (context, state) => WordsExamScreen(),
      ),
      GoRoute(
        path: kNumbersExamScreen,
        builder: (context, state) => NumbersExamScreen(),
      ),
      GoRoute(
        path: kLearningContentScreen,
        builder: (context, state) => const LearningContentScreen(),
      ),
      GoRoute(
        path: kloginView,
        builder: (context, state) => const LogInView(),
      ),
      GoRoute(
        path: kSignUpView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: kWordsScreen,
        builder: (context, state) => const WordsContentScreen(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kTestScreen,
        builder: (context, state) => const TestScreen(),
      ),
      GoRoute(
        path: kPasswordRecoveryView,
        builder: (context, state) => const PasswordRecoveryView(),
      ),
      GoRoute(
        path: kLettersScreen,
        builder: (context, state) => const LettersScreen(),
      ),
      GoRoute(
        path: kNumberScreen,
        builder: (context, state) => const NumbersScreen(),
      ),
      GoRoute(
        path: kProfileView,
        builder: (context, state) => const ProfileView(),
      ),
      GoRoute(
        path: kVerificationCodeView,
        builder: (context, state) => const VerificationCodeView(),
      ),
      GoRoute(
        path: kVideoTranselateView,
        builder: (context, state) => const VideoTranselateView(),
      ),
    ],
  );
}
