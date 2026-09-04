# 📑 Trợ Lý AI Đánh Giá & Nhận Xét Tài Liệu (Offline)

Ứng dụng trợ lý AI hỗ trợ đọc, đánh giá, phân tích ưu/nhược điểm và kiến nghị cải thiện tài liệu báo cáo. 
Hệ thống hoạt động **hoàn toàn offline**, bảo mật 100% dữ liệu, tích hợp công nghệ **OCR** để xử lý tài liệu dạng scan/ảnh chụp và mô hình ngôn ngữ lớn cục bộ qua **Ollama**.

---

## 🌟 Tính năng nổi bật
- **Bảo mật tuyệt đối**: Chạy 100% trên máy tính cục bộ qua Ollama, không gửi dữ liệu ra bên ngoài.
- **Hỗ trợ đa định dạng**: Đọc file PDF kỹ thuật số, file Word (`.docx`), file Text (`.txt`).
- **Tích hợp OCR Offline**: Tự động nhận diện và trích xuất chữ từ **PDF Scan** hoặc **ảnh chụp tài liệu** (`.png`, `.jpg`, `.jpeg`).
- **Tối ưu hiệu năng**: Hỗ trợ các mô hình nhẹ (`qwen2.5:1.5b`, `qwen2.5:3b`, `qwen2.5:7b`), tối ưu 8 luồng CPU và chế độ phản hồi Siêu tốc.
- **Streaming thời gian thực**: Hiển thị quá trình suy nghĩ và xuất kết quả trực tiếp theo thời gian thực.
- **Xuất báo cáo**: Tải báo cáo đánh giá định dạng Markdown (`.md`) chỉ với 1 cú nhấp chuột.
- **Khởi động cùng Windows**: Tích hợp tùy chọn tự chạy ứng dụng khi khởi động máy tính.

---

## 🚀 Hướng dẫn cài đặt & Khởi chạy

### 1. Cài đặt Ollama & Mô hình AI
Tải và cài đặt Ollama từ [ollama.com](https://ollama.com). Sau đó mở terminal và tải mô hình:
```bash
ollama pull qwen2.5:1.5b
ollama pull qwen2.5:3b
```

### 2. Cài đặt các thư viện Python
```bash
pip install -r requirements.txt
```

### 3. Chạy ứng dụng
- **Cách 1**: Nhấp đúp vào file `start_app.bat` (trên Windows).
- **Cách 2**: Chạy lệnh qua terminal:
```bash
streamlit run app.py
```
Sau đó truy cập giao diện tại: `http://localhost:8501`.
