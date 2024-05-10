enum TEXT{
 login,
 register,
 artikel,
 user,
 lokasi,
 fasilitas

}

enum UTILS{
  form_em_or_user,
  form_pass,
  form_email,
  form_username,
  form_name,
  form_adrees,
  form_date,
  form_numberphone,
  form_parent,
  form_school,
  form_adrees_school

}

extension DATA2 on UTILS{
   String get data{
    switch (this) {
      case UTILS.form_em_or_user:
        return "Email/Username";
      case UTILS.form_adrees:
        return "Alamat";
      case UTILS.form_adrees_school:
        return "Alamat Sekolah";
      case UTILS.form_date:
        return "Tanggal Lahir";
      case UTILS.form_email:
        return "Email";
      case UTILS.form_name:
        return "Nama";
      case UTILS.form_school:
        return "Asal Sekolah";
      case UTILS.form_adrees_school:
        return "Alamat Sekolah";
      case UTILS.form_numberphone:
        return "No Tlp";
      case UTILS.form_parent:
        return "Nama Orang tua";
      case UTILS.form_pass:
        return "Kata Sandi";
      case UTILS.form_username:
        return "Nama Pengguna";
    }}
}


extension DATA on TEXT{
   String get subtextHeader {
    switch (this) {
      case TEXT.login:
        return "Silahkan isi data yang ada dibawah untuk masuk kedalam aplikasi";
      case TEXT.register:
        return "Silahkan isi data yang ada dibawah untuk membuat akun";
       case TEXT.artikel:
        return "";
      case TEXT.user:
        return "";
         case TEXT.lokasi:
        return"";
      case TEXT.fasilitas:
        return "";
    }}

    String get textHeader {
    switch (this) {
      case TEXT.login:
        return "Log in";
      case TEXT.register:
        return "Register";
      case TEXT.artikel:
        return "Artikel";
      case TEXT.user:
        return "Profil";
         case TEXT.lokasi:
        return"Lokasi";
      case TEXT.fasilitas:
        return "Fasilitas";
    }}
}