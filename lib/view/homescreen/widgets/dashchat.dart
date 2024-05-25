import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:geminibot/utils/constants.dart';
import 'package:geminibot/utils/style.dart';
import 'package:geminibot/view/homescreen/widgets/CustomDivider.dart';
import 'package:intl/intl.dart';

class MyDashChat {
  
  MessageOptions myMessageOptions() {
    return const MessageOptions(
          showOtherUsersAvatar: true,
          showOtherUsersName: true,
          containerColor: black,
          currentUserContainerColor: purpleDark,
          textColor: white,
          showTime: true,
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
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ));
  }

  MessageListOptions myMessageListOptions() {
    return MessageListOptions(
          dateSeparatorBuilder: (date) {
            return Row(
              children: [
                const CustomDivider(),
                Text(DateFormat('hh:mm').format(date).toString(),style: timeStyle),
                const CustomDivider(),
              ],
            );
          },
          separatorFrequency: SeparatorFrequency.hours,
        );
  }
}
