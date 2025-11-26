class UserEntity {
  final String uId;
  final String email;
  final String name;
  final String image;
  final String phoneNumber;

  UserEntity({
    required this.uId,
    required this.email,
    required this.name,
    required this.image,
    required this.phoneNumber,
  });

  toMap() {
    return {
      'uId': uId,
      'email': email,
      'name': name,
      'image': image,
      'phoneNumber': phoneNumber,
    };
  }
}