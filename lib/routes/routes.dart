import 'package:flutter_go_router/pages/home_page.dart';
import 'package:flutter_go_router/pages/detail_transaksi_page.dart';
import 'package:flutter_go_router/pages/input_transaksi_page.dart';
import 'package:flutter_go_router/pages/laporan_transaksi_page.dart';
import 'package:flutter_go_router/pages/riwayat_transaksi_page.dart';
import 'package:flutter_go_router/pages/splash_page.dart';
import 'package:go_router/go_router.dart';
part 'route_names.dart';

final route = GoRouter(
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
     
      path: RouteNames.splash,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(

      path: RouteNames.home,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(

      path: RouteNames.inputTransaksi,
      builder: (context, state) => const InputTransaksiPage(),
    ),
    GoRoute(

      path: RouteNames.laporanTransaksi,
      builder: (context, state) => const LaporanTransaksiPage(),
    ),
    GoRoute(

      path: RouteNames.riwayatTransaksi,
      builder: (context, state) => const RiwayatTransaksiPage(),
    ),
    GoRoute(
  
      path: RouteNames.detailTransaksi,
      builder: (context, state) => const DetailTransaksiPage(),
    ),
  ],
);
