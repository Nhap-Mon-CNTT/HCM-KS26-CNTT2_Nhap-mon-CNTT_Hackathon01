# BÀI LÀM – HACKATHON 01

- **Mã đề:** 13
- **Họ tên:** Nguyễn Quang Thành
- **Lớp:** HCM-KS26-CNTT2
- **Link repository:** 
- **Hệ điều hành (Windows/macOS):** Windows

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
# Ghi lần lượt các lệnh đã chạy, mỗi lệnh một dòng
pwd
Get-ChildItem -Force .\
Move-Item .\thoi_khoa_bieu.txt .\docs;Move-Item .\logo_trung_tam_ngoai_ngu.PNG .\media
 Copy-Item .\media\logo_trung_tam_ngoai_ngu.PNG .\backup
Remove-Item .\temp_213.tmp
cd .\logs; Get-ChildItem .\; cd..

```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
  Directory: D:\starter-kit\ngoai-ngu-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/28/2026   1:36 PM                backup
d-----        10/28/2026   1:38 PM                data
d-----        10/28/2026   1:45 PM                docs
d-----        10/28/2026   1:40 PM                logs
d-----        10/28/2026   1:47 PM                media
------        10/27/2026   1:31 AM             68 .env
-a----        10/28/2026   1:35 PM           2269 bai_lam.md


    Directory: D:\starter-kit\ngoai-ngu-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:31 AM           4365 logo_trung_tam_ngoai_ngu.
                                                  PNG


    Directory: D:\starter-kit\ngoai-ngu-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:31 AM           6109 dang_ky_khoa_hoc_thang_3.
                                                  xlsx


    Directory: D:\starter-kit\ngoai-ngu-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:31 AM             67 thoi_khoa_bieu.txt


    Directory: D:\starter-kit\ngoai-ngu-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:31 AM           1117 course.log


    Directory: D:\starter-kit\ngoai-ngu-website\media


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:31 AM           4365 logo_trung_tam_ngoai_ngu.
                                                  PNG
```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
Get-Content .\logs\course.log | Select-String "ERROR" > .\logs\daily_report.txt



```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
2026-03-28 08:24:28 [ERROR] Het thoi gian cho (timeout)
2026-03-28 08:30:28 [ERROR] Het thoi gian cho (timeout)

```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] Heading 1: tên dự án
- [x] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [x] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [x] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [x] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [x] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\auto_report.ps1

```

### Kết quả hiển thị

```text
Dang loc log...
=== BAO CAO LOI ===
Hoan thanh!
```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
(Get-Content .\logs\course.log | Select-String "ERROR" | Select-Object LineNumber, Line).Count

```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
6

```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
 echo "=== TONG HOP LOG ===" > .\logs\tong_hop.txt
 Get-Content .\logs\course.log | Select-String "WARNING" >> .\logs\tong_hop.txt
 (Get-Content .\logs\course.log | Select-String "ERROR" | Select-Object LineNumber, Line).Count >> .\logs\tong_hop.txt

```

### Nội dung file logs/tong_hop.txt

```text
=== TONG HOP LOG ===

2026-03-28 08:51:28 [WARNING] Thoi gian tai trang cham
2026-03-28 08:54:28 [WARNING] Video bai giang dung luong lon
2026-03-28 08:57:28 [WARNING] Thoi gian tai trang cham


6


```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/dang_ky_hoc_thang_3.xlsx`, không cần ghi vào đây.
