import 'package:jobseek/pages/business_owner_page.dart';
import 'package:jobseek/pages/home_page.dart';
import 'package:jobseek/pages/job%20seeker/create_account.dart';
import 'package:jobseek/pages/job_seeker_page.dart';
import 'package:jobseek/pages/job%20seeker/job_seeker_login.dart';

var appRoutes = {
  '/': (context) => HomePage(),
  '/jobseeker': (context) => JobSeekerPage(),
  '/business-owner': (context) => BusinessOwnerPage(),
  '/jobseeker-login': (context) => JobSeekerLogin(),
  '/create-account': (context) => CreaetAccount(),
};
