part of 'models.dart';

class User extends Equatable {
  final String id;
  final String email;
  final String name;
  final String profilePictures;
  final List<String> selectedGenres;
  final String selectedLanguage;
  final int balance;

  User(this.id, this.email,
      {this.name,
      this.profilePictures,
      this.selectedGenres,
      this.selectedLanguage,
      this.balance});

  @override
  String toString() {
    return "[$id] - $name, $email";
  }

  @override
  // TODO: implement props
  List<Object> get props => [
        id,
        email,
        name,
        profilePictures,
        selectedGenres,
        selectedLanguage,
        balance
      ];
}
