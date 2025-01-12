import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

int? addToCurrentPoints(
  int currentPoints,
  int pointReward,
) {
  return currentPoints + pointReward;
}

int reduceQuantity(
  int maxQuantity,
  int boughtQuantity,
) {
  return maxQuantity - boughtQuantity;
}

int totalPrice(
  int quantity,
  int price,
) {
  return quantity * price;
}

int subtractToCurrentPts(
  int currentPts,
  int price,
) {
  return currentPts - price;
}
