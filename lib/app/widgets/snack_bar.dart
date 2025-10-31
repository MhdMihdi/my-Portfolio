import 'package:flutter/material.dart';

class SnackbarUtils {
  static void showCustomSnackBar(
      BuildContext context, {
        required String message,
        required IconData icon,
        String? actionLabel,
        VoidCallback? onAction,
      }) {
    final snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,
      //margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      width: 200,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 6,
      backgroundColor: const Color(0xFF2B2B2B),
      content: Center(
        child: Row(
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 12),
            Text(
              message,
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
            if (actionLabel != null && onAction != null)
              TextButton(
                onPressed: onAction,
                child: Text(
                  actionLabel,
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
          ],
        ),
      ),
      duration: const Duration(seconds: 3),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  // static void showSuccessSnackBar(BuildContext context, String message) {
  //   showCustomSnackBar(
  //     context,
  //     message: message,
  //     icon: Icons.check_circle,
  //   );
  // }

  static void showSnackBar(BuildContext context, String message) {
    showCustomSnackBar(
      context,
      message: message,
      icon: Icons.error,
    );
  }

}
