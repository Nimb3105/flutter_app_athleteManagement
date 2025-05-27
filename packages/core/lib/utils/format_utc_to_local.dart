import 'package:intl/intl.dart';

String formatUtcToLocal(DateTime? utcDateTime) {
  if (utcDateTime == null) return 'Không có dữ liệu'; // hoặc trả về chuỗi trống ''
  final localDateTime = utcDateTime.toLocal();
  final formatter = DateFormat('dd/MM/yyyy HH:mm:ss');
  return formatter.format(localDateTime);
}
