# 1. Aşçıya hangi temeli kullanacağını söylüyoruz
FROM nginx:latest

# 2. Kendi bilgisayarımızdaki index.html dosyasını, sunucunun içine kopyala
COPY index.html /usr/share/nginx/html/index.html