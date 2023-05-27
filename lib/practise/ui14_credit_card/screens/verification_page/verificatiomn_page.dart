import 'package:flutter/material.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Verification",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Container(
        height: 60,
        margin: const EdgeInsets.all(15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.deepPurple.shade200,
          ),
        ),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.purple.shade700,
          ),
          alignment: Alignment.center,
          child: const Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 50),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.deepPurple.shade50,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.all(40),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.deepPurple.shade50,
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.all(35),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.deepPurple.shade50,
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(30),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.deepPurple.shade100,
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(25),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.deepPurple.shade200,
                        ),
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.deepPurple.shade200,
                              spreadRadius: 25,
                              blurRadius: 50,
                            ),
                          ],
                          border: Border.all(
                            color: Colors.deepPurple.shade200,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Container(
                          margin: const EdgeInsets.all(15),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.purple.shade700,
                            shape: BoxShape.circle,
                          ),
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.fingerprint,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Text(
              'Touch ID sensor to \nverify transaction',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Text(
              'Please verify your Identity Using Touch ID and \nproceed transaction',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey.shade500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
