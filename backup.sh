#!/bin/bash

# 1. KONTROL AŞAMASI (If-Else Mantığı)
# $1 demek, scripti çalıştırırken yanına yazdığın ilk kelime demektir.
# Eğer kullanıcı klasör adı yazmayı unutursa, script hata versin ve dursun.

if [ -z "$1" ]; then
  echo "HATA: Lütfen yedeklenecek klasörün adını belirtin!"
  echo "Doğru Kullanım: ./backup.sh klasor_adi"
  exit 1
fi

# 2. DEĞİŞKENLER (Artık Dinamik!)
TARIH=$(date +%F)

# KAYNAK klasörümüz artık sabit "projeler" değil, dışarıdan girilen $1 değeri!
KAYNAK=$1 
HEDEF="yedekler"

# Oluşacak dosyanın adını da klasörün adına göre otomatik ayarlıyoruz
DOSYA_ADI="${KAYNAK}_yedek_${TARIH}.tar.gz"

# 3. YEDEKLEME İŞLEMİ
echo "Harika! '$KAYNAK' klasörü yedekleniyor..."

# Sıkıştırma komutumuz aynı
tar -czvf $HEDEF/$DOSYA_ADI $KAYNAK

echo "--------------------------------------"
echo "Görev Tamamlandı!"
echo "Yedeğin bulunduğu yer: $HEDEF/$DOSYA_ADI"