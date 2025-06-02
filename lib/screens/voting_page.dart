import 'package:ean_elections/widgets/second_background.dart';
import 'package:flutter/material.dart';
import '../widgets/red_button.dart';
import '../widgets/white_button.dart';
import '../widgets/ticket_and_button.dart';

class VotingPage extends StatelessWidget {
  const VotingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          const SecondBackground(), // Decorative background

          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 80),

                  Row(
                    children: [
                      SizedBox(
                        width: screenWidth * 0.45,
                        child: RedButton(
                          text: 'Voting Status',
                          onPressed: () {
                            // Action button red
                          },
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: screenWidth * 0.3,
                        child: WhiteButton(
                          text: 'Account',
                          onPressed: () {
                            // Action button white
                          },
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 50),

                  Expanded(
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 35,
                            mainAxisSpacing: 65,
                            childAspectRatio: 3 / 6,
                          ),
                      padding: const EdgeInsets.all(10),
                      itemBuilder: (context, index) {
                        return TicketAndButton(
                          onPressed: () {
                            print('Vote pressed in ticket $index');
                          },
                          buttonText: 'Vote', //added to avoid error
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
