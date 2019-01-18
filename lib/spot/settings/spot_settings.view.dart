import 'package:flutter/material.dart';

import './spot_settings.model.dart';
import '../../l10n/app_localization.dart';

class SpotSettingsView extends StatelessWidget {
  final List<SpotSetting> settings;
  final Function(int, int) onReorder;
  final Function(SpotSettingId) toggleSpotCardVisibility;

  SpotSettingsView({
    @required this.settings,
    @required this.onReorder,
    @required this.toggleSpotCardVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).spotSettings),
      ),
      body: ReorderableListView(
        children: settings
            .map((setting) => _buildListTile(setting, context))
            .toList(),
        onReorder: onReorder,
      ),
    );
  }

  Widget _buildListTile(SpotSetting setting, BuildContext context) {
    return CheckboxListTile(
      key: Key(setting.id.toString()),
      isThreeLine: false,
      value: setting.isVisible,
      onChanged: (bool newValue) {
        toggleSpotCardVisibility(setting.id);
      },
      title: Text(
        getSpotSettingName(
          setting.id,
          context,
        ),
      ),
      secondary: const Icon(Icons.drag_handle),
    );
  }
}
