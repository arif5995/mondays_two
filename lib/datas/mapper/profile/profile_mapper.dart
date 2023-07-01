import 'package:mondays_two/datas/datasource/database.dart';
import 'package:mondays_two/domains/entities/profile/profile_model.dart';

class ProfileDataMapper {
  ProfileModel mapProfileDbToProfileModel(List<Profile> profil) {
    Profile profile = profil.first;
    return ProfileModel(
      image: profile.imgProfile,
      name: profile.name,
      email: profile.email ?? "",
      placeofbirth: profile.placeofbirth ?? "",
      birthday: profile.birthday ?? "",
      nik: profile.nik.toString(),
      gender: profile.gender ?? "",
      umur: profile.umur.toString(),
      alamat: profile.alamat ?? "",
      noId: profile.noId,
      npwp: profile.npwp,
    );
  }

  List<EmailModel> mapListEmailDbToListEmailModel(List<Emails> email) {
    List<EmailModel> listEmail = [];
    for (final emailer in email) {
      listEmail
          .add(EmailModel(id: emailer.id.toString(), email: emailer.email));
    }
    return listEmail;
  }

  List<OthersModel> mapListOtherDbToListOtherModel(List<Others> other) {
    List<OthersModel> listOther = [];
    for (final othered in other) {
      listOther.add(OthersModel(
          id: othered.id.toString(),
          name: othered.nama,
          content: othered.content));
    }
    return listOther;
  }

  Profile mapProfileModelToProfileDb(ProfileModel profileModel){
    return Profile(
        imgProfile: profileModel.image ?? '',
        name: profileModel.name ?? '',
        email: profileModel.email,
        alamat: profileModel.alamat,
        noId: profileModel.noId,
        npwp: profileModel.npwp,
        nik: int.parse(profileModel.nik ?? "0"),
        gender: profileModel.gender,
        birthday: profileModel.birthday,
        placeofbirth: profileModel.placeofbirth,
        umur: int.parse(profileModel.umur ?? "0"),
    );
  }

  List<Others> mapListOrtherModelToListOrtherDb(List<OthersModel> other) {
    List<Others> listOther = [];
    for (final othered in other) {
      listOther.add(Others(
          idProfil: int.parse(othered.id ?? '0'),
          nama: othered.name ?? "",
          content: othered.content ?? ""));
    }
    return listOther;
  }

  List<Emails> mapListEmailModelToListEmailDb(List<EmailModel> email) {
    List<Emails> listEmail = [];
    for (final emailed in email) {
      listEmail.add(Emails(
          idProfil: int.parse(emailed.id ?? '0'),
          email: emailed.email ?? ''));
    }
    return listEmail;
  }

  Emails mapEmailModelToEmailDb(EmailModel emailModel) {
    return Emails(idProfil: int.parse(emailModel.id ?? "0"), email: emailModel.email ?? "");
  }

  Others mapOtherModelToOtherDb(OthersModel othersModel) {
    return Others(nama: othersModel.name ?? "", content: othersModel.content ?? "");
  }
}
