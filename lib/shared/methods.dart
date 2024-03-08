import 'package:intl/intl.dart';

String formatCurrency(double amount, {String simbol = '\$'}) =>
    NumberFormat.currency(locale: 'en_US', symbol: simbol, decimalDigits: 0)
        .format(amount);
