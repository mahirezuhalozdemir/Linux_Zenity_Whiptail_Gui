# BASH SHELL SCRIPTING
### [En](#about-project)/[Tr](#proje-hakkında)
# Proje Hakkında
 Proje bir rehber kayıt uygulamasıdır. Linux komutları ile bir txt dosyasına kişiler ve numaralarını kaydeder. Bu dosya üzerinde silme, ekleme, listeleme ve sıfırlama işlemi yapabilir. Zenity ve Whiptail kütüphanesi kullanılarak tasarlanmıştır.
 - <b>Ekleme:</b> Rehber dosyamıza yeni kullanıcı eklemek için menü üzerinden **<i>Add</i>** seçeneğini seçerek ekleme yapılabilir.Ekleme işlemi için Zenity kütüphanesi form özelliği kullanılır. Girdiler dosyamıza gönderilir. **<i>grep</i>** komutu ile boş girdiler kontrol edilir.
 - <b>Silme:</b> Rehber içinde bir kullanıcı kaydını silmek için Menü üzerinden Delete seçeneği seçilir. Silinmek istenen kullanıcının ismi girilerek, kullanıcı silinir.Burada da grep fonksiyonu kullanılır. 
 - <b>Listeleme:</b>Verileri listelemek için zenity list özelliği kullanılmıştır.
 - <b>Sıfırlama:</b>Sıfırlama işlemi öncesi onay istenir.Onay durumuna göre **<i>truncate</i>** komutu ile dosyanın içi boşaltılır.
 - <b>Menü:</b>Whiptail kütüphanesinin menü özelliği kullanılan fonksiyonda seçime göre diğer fonksiyonlar çalışır.
 - <b>Giriş:</b>Giriş fonksiyonu için önceden kullanıcı adı ve şifre belirlenmiştir. Dilerseniz sh dosyası içinde kullanıcı adını ve şifresini değiştirebilirsiniz. 

 ``` sh
 Kullanıcı adı = admin ,şifre= 123 yazılarak giriş sayfasından menüye geçilebilir.
 ```

 # Projeyi İndirmek İçin
 Readme üzerinde <i><b>Download zip</b></i> seçeneği seçilerek indirilir. project.sh dosyası zip içinden çıkarılır.Terminal üzerinden proje dosyasının bulunduğu konuma gelinir ve 'bash proje.sh' komutu ile uygulama çalıştırılır.
 Kütüphane hatası almamak için önceden zenity ve whiptail'in kurulu olup olmadığını terminal üzerinden kontrol edin.
 Sırayla
 - <b>whiptail --version</b>
 - <b>zenity --version</b>
 komutları çalıştırılarak bu iki kütüphanenin varlığı kontrol. Eğer yüklü ise bir versiyon döndürür. Yüklü değil ise <i>command not found </i> hatası verir. <br>
 Zenity yüklemek için <br>
 - **<i>sudo apt-get install zenity</i>** komutu çalıştırılır.<br>
 Whiptail yüklemek için
 - **<i>sudo apt-get install whiptail</i>** komutu çalıştırılır.
 # Uygulama Ekranı
 
<img src="https://github.com/mahirezuhalozdemir/Linux_Zenity_Whiptail_Gui/blob/main/screens/1.jpg" width="500">
<img src="https://github.com/mahirezuhalozdemir/Linux_Zenity_Whiptail_Gui/blob/main/screens/2.jpg" width="500">
<img src="https://github.com/mahirezuhalozdemir/Linux_Zenity_Whiptail_Gui/blob/main/screens/3.jpg" width="300">
<img src="https://github.com/mahirezuhalozdemir/Linux_Zenity_Whiptail_Gui/blob/main/screens/4.jpg" width="300">
<img src="https://github.com/mahirezuhalozdemir/Linux_Zenity_Whiptail_Gui/blob/main/screens/5.jpg" width="300">
<img src="https://github.com/mahirezuhalozdemir/Linux_Zenity_Whiptail_Gui/blob/main/screens/6.jpg" width="300">


 
