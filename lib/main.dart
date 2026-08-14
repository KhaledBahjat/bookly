import 'package:bookly/Features/home/data/repos/home_repo_implement.dart';
import 'package:bookly/Features/home/presentation/manger/featured_book_cubit/featuerd_book_cubit.dart';
import 'package:bookly/Features/home/presentation/manger/newst_books_cubit/newst_books_cubit.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/routing/routing_gen.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) =>
                  FeatuerdBookCubit(getIt.get<HomeRepoImplement>())
                    ..fetchFeaturedBooks(),
            ),
            BlocProvider(
              create: (context) =>
                  NewstBooksCubit(getIt.get<HomeRepoImplement>()),
            ),
          ],
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Bookly',
            theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: kPrimaryColor,
              textTheme: GoogleFonts.montserratTextTheme(
                ThemeData.dark().textTheme,
              ),
            ),
            routerConfig: RouterGenerator.router,
          ),
        );
      },
    );
  }
}
