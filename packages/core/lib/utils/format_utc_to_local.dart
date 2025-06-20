import 'package:intl/intl.dart';

String formatUtcToLocal(DateTime? utcDateTime) {
  if (utcDateTime == null) return 'Không có dữ liệu';
  final localDateTime = utcDateTime.toLocal();
  final formatter = DateFormat('dd/MM/yyyy HH:mm');
  return formatter.format(localDateTime);
}
