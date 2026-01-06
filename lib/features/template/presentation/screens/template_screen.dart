import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/models/request/template_request.dart';
import '../providers/template_provider.dart';
import '../widgets/template_widget.dart';

class TemplateScreen extends ConsumerWidget {
  const TemplateScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(templateProvider);
    final notifier = ref.read(templateProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Template Screen')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                notifier.callTemplate(
                  TemplateRequest(
                    username: '+95 9781292620',
                    password: 'Weday@123',
                    fcmToken: 'Test',
                    type: 'msg',
                  ),
                );
              },
              child: const Text('Call Template'),
            ),
            const SizedBox(height: 20),

            state.isLoading
                ? const CircularProgressIndicator()
                : state.error != null
                ? Text(
                  state.error!.message,
                  style: const TextStyle(color: Colors.red, fontSize: 16),
                  textAlign: TextAlign.center,
                )
                : state.data != null
                ? TemplateWidget(
                  value: state.data?.accessToken ?? "No Access Token",
                )
                : const Text('No data yet', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
