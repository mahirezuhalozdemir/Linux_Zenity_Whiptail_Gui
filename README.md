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
 komutları çalıştırılarak bu iki kütüphanenin varlığı kontrol edilir. Eğer yüklü ise bir versiyon döndürür. Yüklü değil ise <i>command not found </i> hatası verir. <br>
 Zenity yüklemek için <br>
 - **<i>sudo apt-get install zenity</i>** komutu çalıştırılır.<br>
 Whiptail yüklemek için
 - **<i>sudo apt-get install whiptail</i>** komutu çalıştırılır.

[Projeden Görüntüler](#views-from-project)

# About Project
The project is a contacts application. It saves contacts and numbers in a txt file with Linux commands. It can delete, add, list and reset on this file. It is designed using Zenity and Whiptail library.
- <b>Insert:</b> To add new connect in contact file select  **<i>Add</i>** option in the menu.Form attribute from zenity library is used for add option.Inputs are send to the file. Empty entries are checked with the **<i>grep</i>** command.
 - <b>Delete:</b> To delete a user record in the contact file, the delete option is selected from the Menu. By entering the name of the user to be deleted, the user is deleted. Grep command is used. 
 - <b>List:</b>List attribute from zenity is used to list the data.
 - <b>Reset:</b>Confirmation is requested before the reset process. According to the response, the file is emptied with the **<i>truncate</i>** command.
 - <b>Menu:</b>The menu attribute of Whiptail library works according to the choose.
 - <b>Giriş:</b>Username and password are predefined for the login function. If you wish, you can change the username and password in the sh file. 
 
 ``` sh
 By entering ; Username = admin ,password= 123 you can switch to the menu from the login page.
 ```
 # To Download Project
Project is downloaded by selecting the <i><b>Download zip</b></i> option.Unzip project.sh file.Navigate to the location where the project file is located on the terminal and run the application with the 'bash project.sh' command.In order not to get a library error, check via terminal whether zenity and whiptail are installed beforehand.
In order,
 - <b>whiptail --version</b>
 - <b>zenity --version</b>
 The existence of these two libraries is checked by running this commands. Returns a version if installed. 
If it is not installed, it gives <i>command not found </i> error.<br>
 To install Zenity <br>
 - **<i>sudo apt-get install zenity</i>** command<br>
To install Whiptail <br>
 - **<i>sudo apt-get install whiptail</i>** command runs.


 # Views From Project
 
<img src="https://github.com/mahirezuhalozdemir/Linux_Zenity_Whiptail_Gui/blob/main/screens/1.jpg" width="500">
<img src="https://github.com/mahirezuhalozdemir/Linux_Zenity_Whiptail_Gui/blob/main/screens/2.jpg" width="500">
<img src="https://github.com/mahirezuhalozdemir/Linux_Zenity_Whiptail_Gui/blob/main/screens/3.jpg" width="300">
<img src="https://github.com/mahirezuhalozdemir/Linux_Zenity_Whiptail_Gui/blob/main/screens/4.jpg" width="300">
<img src="https://github.com/mahirezuhalozdemir/Linux_Zenity_Whiptail_Gui/blob/main/screens/5.jpg" width="300">
<img src="https://github.com/mahirezuhalozdemir/Linux_Zenity_Whiptail_Gui/blob/main/screens/6.jpg" width="300">
