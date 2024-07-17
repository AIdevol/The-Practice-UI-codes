// import 'package:flutter/material.dart';

// class OtpView extends StatelessWidget {
//   const OtpView({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           padding: EdgeInsets.all(20),
//           height: double.infinity,
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   '💭Life is the full fledge of the journey if able to join that journey you do not need to rush just keep calm your mind and pure your heart...',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontFamily: 'cursive',
//                     color: Colors.black,
//                     fontSize: 20,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 _buildTextField("Enter Otp here.."),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => OtpView(),
//                       ),
//                     );
//                   },
//                   child: const Text(
//                     'Continue',
//                     style: TextStyle(
//                       fontFamily: 'sans',
//                       fontSize: 25,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.red,
//                     padding: const EdgeInsets.symmetric(
//                       vertical: 10,
//                       horizontal: 40,
//                     ),
//                     elevation: 8,
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField(String placeholder) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 20),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.grey),
//         borderRadius: BorderRadius.circular(27.0),
//       ),
//       child: TextField(
//         decoration: InputDecoration(
//           border: InputBorder.none,
//           hintText: placeholder,
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import '../../../controllers/otp_controller.dart';

class OtpView extends StatelessWidget {
  const OtpView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          height: double.infinity,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '💭Life is the full fledge of the journey if able to join that journey you do not need to rush just keep calm your mind and pure your heart...',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'serif',
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                _buildTextField("Enter Otp here.."),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Generate OTP
                    final otp = OTPController.generateOTP();
                    // Handle OTP logic (e.g., sending OTP to server)
                    print('Generated OTP: $otp');
                  },
                  child: const Text(
                    'Generate OTP',
                    style: TextStyle(
                      fontFamily: 'cursive',
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 40,
                    ),
                    elevation: 8,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String placeholder) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(27.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: placeholder,
        ),
      ),
    );
  }
}
