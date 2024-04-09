import 'dart:developer';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wypedriver/apps/views/homeView.dart';

class FirebaseService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // final _formKey = GlobalKey<FormState>();

  Future<void> login(context, String email, String password) async {
    try {
      // Authenticate with Firebase
      final userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      // Get the Driver document ID based on the signed-in user's email
      final driverQuery = await FirebaseFirestore.instance
          .collection('Driver')
          .where('email', isEqualTo: email)
          .get();

      final driverDoc = driverQuery.docs.first;
      final firestoreId = driverDoc.id;
      final fullDriverDoc =
          await _firestore.collection('Driver').doc(firestoreId).get();
      final driverData = fullDriverDoc.data();
      final driverId = driverData?['driverId']; // Contains all driver fields
      print(driverData);
      print(driverId); // Access the document ID
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
            builder: (context) => HomeView(
                  userData: driverId,
                )),
        (route) => false,
      ); // Successful login - navigate to a driver-specific page using driverId
    } on FirebaseAuthException catch (e) {
      // Handle Authentication errors'
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Login failed. Please try again.')));
      print('Authentication Error: $e');
    } catch (e) {
      // Handle other errors (e.g. Firestore query failure)
      print('Error: $e');
    }
  }
}
