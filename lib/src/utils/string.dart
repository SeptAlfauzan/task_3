import 'package:intl/intl.dart';

String parseDate(DateTime inputDate) {
  try {
    String formattedDate = DateFormat('dd-MM-yyyy').format(inputDate);
    return formattedDate;
  } catch (e) {
    // Handle any parsing errors
    return 'Invalid date';
  }
}
