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
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (state.isLoading)
                  const CircularProgressIndicator()
                else
                  _TimeDisplayWidget(time: state.currentTime),
                if (state.errorMessage != null) ...[
                  const SizedBox(height: 16),
                  _ErrorDisplayWidget(message: state.errorMessage!),
                ],
                const SizedBox(height: 32),
                _RefreshButton(
                  onPressed: state.isLoading ? null : widget.viewModel.onRefresh,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _TimeDisplayWidget extends StatelessWidget {
  final String? time;
  const _TimeDisplayWidget({required this.time});

  @override
  Widget build(BuildContext context) {
    return Text(
      time ?? '--',
      style: Theme.of(context).textTheme.headlineSmall,
      textAlign: TextAlign.center,
    );
  }
}

class _ErrorDisplayWidget extends StatelessWidget {
  final String message;
  const _ErrorDisplayWidget({required this.message});

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: TextStyle(color: Theme.of(context).colorScheme.error),
      textAlign: TextAlign.center,
    );
  }
}

class _RefreshButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const _RefreshButton({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text('Refresh'),
    );
  }
}
