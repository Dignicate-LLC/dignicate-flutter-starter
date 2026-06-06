import 'package:flutter/material.dart';
import 'package:viewmodel/feature/home/home_ui_state.dart';
import 'package:viewmodel/feature/home/home_view_model.dart';

class HomeTabScreen extends StatefulWidget {
  final HomeViewModel viewModel;

  const HomeTabScreen({super.key, required this.viewModel});

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  @override
  void initState() {
    super.initState();
    widget.viewModel.onAppear();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: widget.viewModel,
      builder: (context, _) {
        final HomeUiState state = widget.viewModel.uiState;
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (state.isLoading)
                const CircularProgressIndicator()
              else
                Text(
                  state.currentTime ?? '--',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              if (state.errorMessage != null) ...[
                const SizedBox(height: 8),
                Text(
                  state.errorMessage!,
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ],
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: state.isLoading ? null : widget.viewModel.onRefresh,
                child: const Text('Refresh'),
              ),
            ],
          ),
        );
      },
    );
  }
}
