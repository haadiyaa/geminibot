import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:geminibot/utils/constants.dart';
import 'package:geminibot/utils/style.dart';
import 'package:geminibot/view/homescreen/widgets/CustomDivider.dart';
import 'package:intl/intl.dart';

class MyDashChat {
  MessageOptions myMessageOptions() {
    return MessageOptions(
      showOtherUsersAvatar: true,
      showOtherUsersName: true,
      containerColor: black,
      currentUserContainerColor: lightGrey,
      currentUserTextColor: white,
      textColor: white,
      timeFontSize: 8,
      showTime: true,
      timeFormat: DateFormat('hh:mm a'),
    );
  }

  InputOptions myInputOptions() {
    return const InputOptions(
        inputToolbarPadding: sendTextPadding,
        inputToolbarStyle: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        textCapitalization: TextCapitalization.sentences,
        inputDecoration: InputDecoration(
          contentPadding: sendTextPadding,
          hintText: 'Ask Something...',
          filled: true,
          fillColor: white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            borderSide: BorderSide(color: white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            borderSide: BorderSide(color: white),
          ),
        ));
  }

  MessageListOptions myMessageListOptions() {
    return MessageListOptions(
      dateSeparatorBuilder: (date) {
        return Row(
          children: [
            const CustomDivider(),
            Text(
              DateFormat('hh:mm').format(date).toString(),
              style: timeStyle,
            ),
            const CustomDivider(),
          ],
        );
      },
      separatorFrequency: SeparatorFrequency.hours,
    );
  }
}
