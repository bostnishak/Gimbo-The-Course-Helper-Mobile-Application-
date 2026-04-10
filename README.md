# Gimbo Course Helper 🎓

Gimbo Course Helper, üniversite öğrencilerinin akademik süreçlerini dijitalleştirmek ve ders takibini kolaylaştırmak amacıyla geliştirilmiş, kullanıcı dostu bir mobil eğitim platformudur. Flutter framework'ü kullanılarak geliştirilen bu uygulama, öğrencilerin ders materyalleri, performans analizleri ve kişisel notları arasında hızlı geçiş yapmasını sağlar.

## ✨ Temel Özellikler

- **Ders Yönetim Paneli:** Calculus 1-2, Physics 1-2 ve Laboratuvar dersleri için kategorize edilmiş ders içerikleri.
- **Eğitim İçerikleri:** Konu bazlı video listeleri ve interaktif örnek soru çözümleri.
- **Akademik Analiz:** Ders bazlı doğru/yanlış sayıları ve başarı yüzdelerinin grafiksel takibi.
- **Dinamik Not Sistemi:** Sınav hatırlatıcıları ve çalışma planları için not ekleme/silme işlevselliği.
- **Eğitmen Rehberi:** Farklı branşlardaki eğitmenlerin akademik profillerine ve değerlendirme puanlarına erişim.
- **Geri Bildirim Sistemi:** Kullanıcı deneyimini iyileştirmek için entegre öneri ve sorun bildirme formu.

## 🛠️ Teknik Detaylar

- **Framework:** Flutter
- **Programlama Dili:** Dart
- **Geliştirme Ortamı:** Visual Studio Code / Android Studio
- **Paket Yönetimi:** `pubspec.yaml` üzerinden yönetilen harici kütüphaneler

## 📂 Proje Yapısı

Proje, temiz bir kod mimarisi (Clean Architecture) prensiplerine uygun olarak şu dosyaları içerir:
- `main.dart`: Uygulama giriş noktası ve rota yönetimi.
- `home_page.dart`: Kategorize edilmiş ana ders menüsü.
- `AnalysisPage.dart`: İstatistiksel verilerin görüntülendiği panel.
- `course_page.dart`: Video ve konu içeriklerinin sunulduğu dinamik sayfa.
- `notes_page.dart`: Kullanıcı notlarının saklandığı alan.
- `TeachersPage.dart`: Eğitmen listesi ve detayları.

## 🚀 Kurulum ve Çalıştırma

1. Projeyi klonlayın:
   ```bash
   git clone https://github.com/bostnishak/Gimbo-The-Course-Helper-Mobile-Application-.git
