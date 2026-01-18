import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/app/sections/main/main_section.dart';
import 'bloc/connected_cubit.dart';

class NChecking extends StatelessWidget {
  const NChecking({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ConnectedCubit, ConnectedState>(
      listener: (context, state) {
        // if (state is ConnectedFailureState) {
        //   ScaffoldMessenger.of(context).showSnackBar(
        //     const SnackBar(
        //       content: Text('Internet Lost'),
        //       behavior: SnackBarBehavior.floating,
        //     ),
        //   );
        // }
      },
      builder: (context, state) {
        if (state is ConnectedSuccessState) {
          return const MainPage();
        } else {
          return const NoConnectionError();
        }
      },
    );
  }
}

class NoConnectionError extends StatelessWidget {
  const NoConnectionError({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // أيقونة عدم الاتصال
              Container(
                padding: const EdgeInsets.all(32),
                decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.wifi_off_rounded,
                  size: 80,
                  color: Colors.red.shade400,
                ),
              ),

              const SizedBox(height: 32),

              // العنوان
              Text(
                'No Internet Connection',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 16),

              // الوصف
              Text(
                'Please check your internet connection\n',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.white,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),

              // const SizedBox(height: 40),
              //
              // // زر إعادة المحاولة
              // ElevatedButton.icon(
              //   onPressed: () {
              //     // إعادة فحص الاتصال
              //     context.read<ConnectedCubit>().checkInitialConnection();
              //   },
              //   icon: const Icon(Icons.refresh_rounded),
              //   label: const Text('Try Again'),
              //   style: ElevatedButton.styleFrom(
              //     padding: const EdgeInsets.symmetric(
              //       horizontal: 32,
              //       vertical: 16,
              //     ),
              //     backgroundColor: Colors.blue.shade600,
              //     foregroundColor: Colors.white,
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(12),
              //     ),
              //     elevation: 2,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}