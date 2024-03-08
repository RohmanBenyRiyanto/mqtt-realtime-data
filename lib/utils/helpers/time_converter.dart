import 'package:intl/intl.dart';

/// Converts a DateTime object to a formatted string
///
/// @param dateTime The DateTime object to be converted
/// @returns A formatted string representation of the DateTime object
///
/// Output format: "12:00 AM"
String formatOne(DateTime? dateTime) {
  if (dateTime == null) return '--:--';
  final formatter = DateFormat('h:mm a');
  return formatter.format(dateTime);
}
