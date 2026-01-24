import 'package:flutter/material.dart';
import 'package:jobseek/pages/job%20seeker/job_seeker_login.dart';
import 'package:jobseek/pages/business%20owner/business_owner_login.dart';
import 'package:jobseek/shared/themes.dart';

class RoleCardData {
  final String image;
  final String title;
  final String description;
  final Widget Function() page;

  const RoleCardData({
    required this.image,
    required this.title,
    required this.description,
    required this.page,
  });
}

class ChooseRole extends StatelessWidget {
  const ChooseRole({super.key});

  static final List<RoleCardData> _cardData = [
    RoleCardData(
      image: "assets/images/grandma.png",
      title: "Job Seeker",
      description: "Finding a job here never been easier than before",
      page: () => JobSeekerLogin(),
    ),
    RoleCardData(
      image: "assets/images/grandfa.png",
      title: "Business Owner",
      description: "Let's recruit your great candidate faster here",
      page: () => BusinessOwnerLogin(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              _buildLogo(),
              const SizedBox(height: 70),
              _buildText(),
              const SizedBox(height: 40),
              _buildRoleCard(context, _cardData[0]),
              const SizedBox(height: 35),
              _buildRoleCard(context, _cardData[1]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return const Center(
      child: Column(
        children: [
          Image(image: AssetImage("assets/images/logo.png"), height: 120),
          SizedBox(height: 8),
          Text(
            "JobSeek",
            style: TextStyle(
              color: AppColors.primary,
              fontSize: AppFonts.title,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildText() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Continue as",
          style: TextStyle(
            fontSize: AppFonts.subtitle,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "Please select your role to continue. Choose Business Owner if you want to post jobs and manage hiring. Choose Job Seeker if you want to find and apply for jobs.",
          style: TextStyle(height: 1.5, fontSize: AppFonts.body),
        ),
      ],
    );
  }

  Widget _buildRoleCard(BuildContext context, RoleCardData data) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => data.page()),
        );
      },
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset(data.image, height: 60, width: 60, fit: BoxFit.contain),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.title.toUpperCase(),
                    style: const TextStyle(
                      color: AppColors.primary,
                      fontSize: AppFonts.regular,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    data.description,
                    style: TextStyle(fontSize: AppFonts.body, height: 1.4),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
