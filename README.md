
# 🎓 Expert System for Career Advice

Hệ chuyên gia tư vấn nghề nghiệp được xây dựng phục vụ cho môn **Hệ chuyên gia**, giúp người dùng xác định các nghề nghiệp phù hợp dựa trên sở thích, kỹ năng và thông tin cá nhân. Hệ thống sử dụng **Prolog** cho suy luận luật và **Python (Tkinter)** để xây dựng giao diện người dùng.

## 📁 Cấu trúc dự án

```
Expert_System/
├── career_advice_system.py     # Giao diện người dùng với Tkinter
├── career_prolog.py            # Tương tác giữa Python và Prolog (xử lý logic)
├── career_rules.pl             # Tập luật nghề nghiệp viết bằng Prolog
├── requirements.txt            # Thư viện cần cài đặt
```

## ⚙️ Công nghệ sử dụng

- Python 3.x
- SWI-Prolog
- PySWIP (Python-Prolog bridge)
- Tkinter (Giao diện người dùng)

## 🚀 Cách chạy chương trình

### 1. Cài đặt thư viện Python

```bash
pip install -r requirements.txt
```

### 2. Cài SWI-Prolog

Tải từ: https://www.swi-prolog.org/Download.html  
Sau đó đảm bảo lệnh `swipl` có thể chạy từ terminal (cấu hình PATH nếu cần).

### 3. Chạy chương trình

```bash
python career_advice_system.py
```

## 🧠 Cách hoạt động

1. Người dùng chọn các thông tin như độ tuổi, sở thích, kỹ năng,...
2. Python gửi dữ liệu sang Prolog.
3. Prolog dùng tập luật trong `career_rules.pl` để suy diễn.
4. Python nhận kết quả và hiển thị trên giao diện.

## 📜 Ví dụ luật Prolog

```prolog
career(young, art, literature, creative, "Graphic Designer").
career(adult, tech, math, analytical, "Data Scientist").
career(teen, nature, biology, caring, "Veterinarian").
```

## 📌 Ghi chú

- Có thể mở rộng tập luật để hỗ trợ thêm nhiều nghề nghiệp.
- Hệ thống hỗ trợ đa hướng, có thể mở rộng gợi ý khóa học hoặc giải thích kết quả.

## 👨‍💻 Tác giả

- Tên sinh viên: [Điền tên bạn]
- Môn học: Hệ chuyên gia
- Trường: [Tên trường hoặc khoa]

## 📸 Demo

*Thêm hình ảnh nếu có tại đây*

## 📄 Giấy phép

Dự án phát triển phục vụ mục đích học tập.
