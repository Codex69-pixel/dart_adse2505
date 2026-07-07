class User {
  final String name;
  final String role;
  final bool isActive;
  final List<String> permissions;

  User({
    required this.name,
    required this.role,
    required this.isActive,
    required this.permissions,
  });
}
