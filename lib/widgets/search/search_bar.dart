import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pharmabros/providers/home.dart';
import 'package:pharmabros/styles/style.dart';

class SearchBarWidget extends ConsumerStatefulWidget {
  const SearchBarWidget({super.key});

  @override
  ConsumerState<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends ConsumerState<SearchBarWidget> {
  late final TextEditingController textEditingController;

  @override
  void initState() {
    final state = ref.read(searchBarNotifierProvider);
    textEditingController = TextEditingController(text: state);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 38,
        padding: const EdgeInsets.fromLTRB(8, 12, 11, 12),
        decoration: BoxDecoration(
          color: AppStyle.color.buttonContainer,
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextFormField(
          controller: textEditingController,
          style: AppStyle.typography.body1,
          textAlignVertical: TextAlignVertical.center,
          onEditingComplete: () {
            ref
                .read(searchBarNotifierProvider.notifier)
                .set(textEditingController.text);
            FocusScope.of(context).unfocus();
          },
          decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              isDense: true,
              border: InputBorder.none,
              suffix: InkWell(
                onTap: () {
                  textEditingController.clear();
                },
                child: Icon(
                  color: AppStyle.color.iconGray,
                  Icons.cancel,
                  size: 16,
                ),
              )),
        ));
  }
}
