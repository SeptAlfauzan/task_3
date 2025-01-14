import 'package:flutter/material.dart';
import 'package:task_3/src/utils/string.dart';

class DatePicker extends StatefulWidget {
  final Function(DateTime) onPickDate;
  final String label;
  const DatePicker({super.key, required this.onPickDate, required this.label});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime selectedDate = DateTime.now().add(const Duration(days: 1));
  Future<void> _selectDate(BuildContext context) async {
    Future.microtask(() async {
      final DateTime? picked = await showDatePicker(
        // ignore: use_build_context_synchronously
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101),
      );
      if (picked != null && picked != selectedDate) {
        setState(() {
          selectedDate = picked;
        });
        widget.onPickDate(picked);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(widget.label),
      const SizedBox(height: 12),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(parseDate(selectedDate)),
          const SizedBox(width: 12),
          ElevatedButton.icon(
            onPressed: () async {
              await _selectDate(context);
            },
            icon: const Icon(Icons.calendar_view_day_outlined),
            label: const Text("Pick due date"),
          )
        ],
      ),
    ]);
  }
}
