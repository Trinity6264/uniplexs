import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uniplexs/provider/dashboard/movie_wrapper_view_model/movie_detail/buy_tickets/buy_tickets_view_model.dart';

import 'package:uniplexs/views/dashboard/movie_wrapper/movie_detail/buy_tickets/ticket_date_time/date_time_widget.dart';

class TicketDateTime extends StatelessWidget {
  const TicketDateTime({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final buyTicketViewModel = context.read<BuyTicketsViewModel>();
    return Container(
      width: double.infinity,
      alignment: Alignment.bottomCenter,
      height: size.height * 0.2,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Consumer<BuyTicketsViewModel>(
          builder: (context, value, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                DateTimeWidget(
                  onTap: () {
                    buyTicketViewModel.onDayChanged('Sat');
                  },
                  date: '22',
                  day: 'Sat',
                  isFocus: value.daySelected == 'Sat',
                  time: '18:00',
                ),
                DateTimeWidget(
                  onTap: () {
                    buyTicketViewModel.onDayChanged('Thur');
                  },
                  date: '25',
                  day: 'Thur',
                  isFocus: value.daySelected == 'Thur',
                  time: '12:00',
                ),
                DateTimeWidget(
                  onTap: () {
                    buyTicketViewModel.onDayChanged('Wed');
                  },
                  date: '08',
                  day: 'Wed',
                  isFocus: value.daySelected == 'Wed',
                  time: '19:00',
                ),
                DateTimeWidget(
                  onTap: () {
                    buyTicketViewModel.onDayChanged('Fri');
                  },
                  date: '07',
                  day: 'Fri',
                  isFocus: value.daySelected == 'Fri',
                  time: '02:00',
                ),
                DateTimeWidget(
                  onTap: () {
                    buyTicketViewModel.onDayChanged('Mon');
                  },
                  date: '27',
                  day: 'Mon',
                  isFocus: value.daySelected == 'Mon',
                  time: '19:00',
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
