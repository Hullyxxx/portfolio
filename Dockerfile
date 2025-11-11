# Bước 1: Chọn image Nginx cơ sở
# Sử dụng 'alpine' để giữ image siêu nhẹ
FROM nginx:alpine

# Bước 2: Sao chép các file portfolio của bạn vào thư mục web root của Nginx
# Thư mục web root mặc định của Nginx là /usr/share/nginx/html
COPY src/ /usr/share/nginx/html

# Bước 3: (Không bắt buộc, nhưng là good practice) Khai báo port mà container sẽ lắng nghe
EXPOSE 80

# (Không cần CMD, vì image Nginx cơ sở đã có lệnh để khởi động Nginx)