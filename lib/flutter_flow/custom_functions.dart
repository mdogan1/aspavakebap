import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

bool checkDates(
  DateTime? openingHour,
  DateTime? closingHour,
  DateTime currentTime,
) {
  // covert time into double
  if (closingHour!.day > openingHour!.day) {
    DateTime openingDate = DateTime(
        currentTime.year,
        currentTime.month,
        currentTime.day,
        openingHour.hour,
        openingHour.minute,
        openingHour.second);
    DateTime closingDate = DateTime(
        currentTime.year,
        currentTime.month,
        currentTime.day + 1,
        closingHour.hour,
        closingHour.minute,
        closingHour.second);
    if (currentTime.isAfter(openingDate) && currentTime.isBefore(closingDate))
      return true;
    else
      return false;
  } else {
    DateTime openingDate = DateTime(
        currentTime.year,
        currentTime.month,
        currentTime.day,
        openingHour.hour,
        openingHour.minute,
        openingHour.second);
    DateTime closingDate = DateTime(
        currentTime.year,
        currentTime.month,
        currentTime.day,
        closingHour.hour,
        closingHour.minute,
        closingHour.second);
    if (currentTime.isAfter(openingDate) && currentTime.isBefore(closingDate))
      return true;
    else
      return false;
  }
}
