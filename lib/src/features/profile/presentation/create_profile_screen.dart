import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gravatar/flutter_gravatar.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker_widget/image_picker_widget.dart';
import 'package:watchable/src/constants/app_sizes.dart';
import 'package:watchable/src/features/home/presentation/home_screen.dart';
import 'package:watchable/src/features/profile/application/update_profile_controller.dart';
import 'package:watchable/src/features/startup/application/startup_providers.dart';

import '../../../constants/locale_keys.dart';

class CreateProfileScreen extends HookConsumerWidget {
  static const route = "/create-profile";
  static const name = "CreateProfile";

  const CreateProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usernameController = useTextEditingController(text: "");

    final selectedImage = useState<File?>(null);

    onSubmit() => ref.read(updateProfileControllerProvider.notifier).updateProfile(usernameController.text, selectedImage.value);
    ref.listen(updateProfileControllerProvider, (_, next) {
      if (next.hasError) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(next.error.toString())));
      }
      if (next.hasValue && next.value != null) {
        context.goNamed(HomeScreen.name);
      }
    });

    final gravatar = Gravatar(ref.watch(supabaseProvider).auth.currentUser!.email!);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(Sizes.p24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(LocaleKeys.profile_completionHeadline.tr(), style: Theme.of(context).textTheme.headlineMedium),
              gapH12,
              ImagePickerWidget(
                diameter: 180,
                initialImage: gravatar.imageUrl(),
                isEditable: true,
                shouldCrop: true,
                onChange: (image) => selectedImage.value = image,
              ),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(labelText: LocaleKeys.profile_name.tr()),
              ),
              gapH12,
              TextButton(onPressed: onSubmit, child: const Text("Save")),
            ],
          ),
        ),
      ),
    );
  }
}
