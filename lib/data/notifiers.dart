// ValueNotifier : hold the data
// ValueListenableBuilder: listen to the data (don't need the set state)

import 'package:flutter/material.dart';

ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);
// ValueNotifier<bool> isDarkModeNotifier = ValueNotifier(false);
late ValueNotifier<bool> isDarkModeNotifier;
