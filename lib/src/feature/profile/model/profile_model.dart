class ProfileUserModel {
  final String name;
  final String email;
  final String phone;
  final String profileImage;
  final String nationalId;
  ProfileUserModel(
      {required this.name,
      required this.email,
      required this.phone,
      required this.profileImage,
      required this.nationalId});
  factory ProfileUserModel.fromJSON(Map<String, dynamic> jsonData) {
    return ProfileUserModel(
        email: jsonData["email"],
        name: jsonData["name"],
        phone: jsonData["phone"],
        profileImage: jsonData["profileImage"],
        nationalId: jsonData["nationalId"]);
  }
}

class ProfileModel {
  final ProfileUserModel profileUserModel;
  ProfileModel({
    required this.profileUserModel,
  });
  factory ProfileModel.fromJSON(Map<String, dynamic> jsonData) {
    return ProfileModel(profileUserModel: ProfileUserModel.fromJSON(jsonData["user"]));
  }
}