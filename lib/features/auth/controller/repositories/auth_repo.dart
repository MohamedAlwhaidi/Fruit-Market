import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

/// From this class we know how working the screen
abstract class AuthRepo {
  /// Either package we can use it for clean code and
  /// instead of to remember where we must use try and catch
  Future<Either<Exception, UserCredential>> loginWithGoogle();
  Future<Either<Exception, UserCredential>> loginWithFacebook();
  Future completeInformation({
    @required String name,
    @required String phoneNumber,
    @required String address,
  });
}
