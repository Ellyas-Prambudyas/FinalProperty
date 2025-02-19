// app_routes.dart

// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = '/home';
  static const ALL_PAKET = '/all-paket';
  static const GALLERY = '/gallery';
  static const LOGIN = '/login'; // Definisikan rute login
  static const SIGNUP = '/signup'; // Definisikan rute signup
  static const PAKETDETAIL = '/paket-detail';
  static const PROFILE = '/profil';
  static const MINI_PAGE = '/mini-page';
  static const MEDIUM_PAGE = '/medium-page';
  static const LARGE_PAGE = '/large-page';
  static const ADMIN = '/admin';
  static const ADMIN_GALLERY = '/admin-gallery';
  static const ADMIN_PAKET = '/admin-paket';
  static const EDIT_PAKET = '/edit-paket';
  static const EDIT_GALLERY = '/edit-gallery';
  static const EDIT_PROFILE = '/edit-profile'; // Define the settings route
}
