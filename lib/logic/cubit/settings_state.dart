part of 'settings_cubit.dart';

class SettingsState extends Equatable {
  const SettingsState({
    @required this.appNotifications,
    @required this.emailNotifications,
  });

  final bool appNotifications;
  final bool emailNotifications;

  SettingsState copyWith({
    bool appNotifications,
    bool emailNotifications,
  }) {
    return SettingsState(
      appNotifications: appNotifications ?? this.appNotifications,
      emailNotifications: emailNotifications ?? this.emailNotifications,
    );
  }

  @override
  List<Object> get props => [
        emailNotifications,
        appNotifications,
      ];

  @override
  String toString() => 'SettingsState(appNotifications: $appNotifications, '
      'emailNotifications: $emailNotifications)';
}
