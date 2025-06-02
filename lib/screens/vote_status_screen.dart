import 'package:flutter/material.dart';
import '../widgets/second_background.dart';
import '../widgets/back_button.dart';
import '../widgets/ticket.dart';
import '../widgets/voting_bar_status.dart';

class VoteStatusScreen extends StatelessWidget {
  const VoteStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final double ticketWidth = (screenWidth - 50 - 45) / 2;

    const double topVisibleHeight = 220;
    const double ticketShortHeight = 220;
    const double ticketLongHeight = 300;

    return Scaffold(
      body: Stack(
        children: [
          const SecondBackground(),
          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: BackButtonCustom(
                      onPressed: () {
                        // logic button
                      },
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Voting Results Screen!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Last update: XX:XX AM",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          // Tickets 1 y 2
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(2, (index) {
                              return SizedBox(
                                width: ticketWidth,
                                height: topVisibleHeight,
                                child: ClipRect(
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    heightFactor:
                                        topVisibleHeight / ticketShortHeight,
                                    child: Transform.scale(
                                      scaleX: 0.85,
                                      child: Ticket(
                                        width: ticketWidth,
                                        height: ticketShortHeight,
                                        child: const SizedBox.shrink(),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                          const SizedBox(height: 35),

                          // Tickets 3 y 4 with bar
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Ticket 3
                              SizedBox(
                                width: ticketWidth,
                                height: ticketLongHeight,
                                child: Transform.scale(
                                  scaleX: 0.85,
                                  child: Ticket(
                                    width: ticketWidth,
                                    height: ticketLongHeight,
                                    cutBottomShort: true,
                                    child: Stack(
                                      children: [
                                        const Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                            padding: EdgeInsets.only(top: 70),
                                            child: SizedBox(
                                              width: 340,
                                              height: 70,
                                              child: VotingBarStatus(
                                                percentage: 1.0,
                                                fillColor: Colors.green,
                                                alignment:
                                                    Alignment.bottomCenter,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              bottom: 45,
                                            ),
                                            child: Text(
                                              "72%\n125 votes",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              // Ticket 4
                              SizedBox(
                                width: ticketWidth,
                                height: ticketLongHeight,
                                child: Transform.scale(
                                  scaleX: 0.85,
                                  child: Ticket(
                                    width: ticketWidth,
                                    height: ticketLongHeight,
                                    cutBottomShort: true,
                                    child: Stack(
                                      children: [
                                        const Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                            padding: EdgeInsets.only(top: 70),
                                            child: SizedBox(
                                              width: 340,
                                              height: 70,
                                              child: VotingBarStatus(
                                                percentage: 1.0,
                                                fillColor: Colors.orange,
                                                alignment:
                                                    Alignment.bottomCenter,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              bottom: 45,
                                            ),
                                            child: Text(
                                              "65%\n87 votes",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    "See other movies status",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Transform.rotate(
                    angle: 4.7124,
                    child: BackButtonCustom(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),

                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
