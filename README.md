# Hello-AI: Bài toán phân loại ảnh thuộc khu vực nào

### Cài đặt môi trường và các công cụ cần thiết:
Chọn một trong 2 cách sau:
- #### Môi trường global:
Gán quyền thực thi và chạy script **setup_global_env.sh**.

- #### Môi trường ảo:
B1: Gán quyền thực thi và chạy script **setup_AI_env.sh** để tạo môi trường ảo (**AI**).
B2: Active môi trường mới bằng lệnh: **# source AI/bin/activate**.
B3: Chạy lại script **setup_AI_env.sh** trong môi trường ảo (**AI**) để để cài đặt các công cụ cần thiết bao gồm jupyter, tensorflow và opencv.


### Chạy project:
- Chạy lệnh `jupyter notebook` và mở link hiện ra trong terminal bằng một browser bất kì. (Nếu dùng linux có giao diện thì link sẽ tự động được mở).
- **Option**: 
	Đưa jupyter vào tiến trình background bằng cách: 
		Nhấn "Ctrl + Z"
		Gõ lệnh "bg"
		Enter.
		
	Đưa trở lại foreground bằng cách: 
		Gõ lệnh "fg"
		Enter.
		
- Trên browser, mở file "**Hello-AI/src/script.ipynb**" lên.
- Chuyển qua môi trường ảo (**AI**) nếu có sử dụng bằng cách "**Kernel >> Change kernel >> AI-env**".
- Chạy script  từ jupyter "**Kernel >> Restart & Run all**".


