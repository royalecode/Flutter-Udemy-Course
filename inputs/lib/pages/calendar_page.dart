import 'package:flutter/material.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  late DateTime _initialDate, _date;

  @override
  void initState() {
    super.initState();
    _initialDate = DateTime(1993, 4, 10);
    _date = _initialDate;

    while(!_selectableDayPredicate(_initialDate)){
      _initialDate = _initialDate.add(
        const Duration(
          days: 1,
        ),
      );
      _date = _initialDate;
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: _save,
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: SafeArea(
        child: CalendarDatePicker(
          initialDate: _date,
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
          // initialCalendarMode: DatePickerMode.year,
          selectableDayPredicate: _selectableDayPredicate,
          onDateChanged: (date) {
            _date = date;
          },
        ),
      ),
    );
  }

  bool _selectableDayPredicate(DateTime day) {
    return day.weekday != 6 && day.weekday != 7;
  }

  void _save() {
    if (_initialDate != _date) {
      /// actualitzar la data
      print(_date);
    }
    Navigator.pop(context);
  }
}
