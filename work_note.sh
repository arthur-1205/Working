#1. Off hosting nha, VPS CHEAP và BASIC làm tương tự 

#2. Active VPS gói CHEAP, BASIC -> nhấn CREATE rồi đợi
    Active Premium thì là cài lại cho khách

#3. Cài lại = Off + Tạo mới 

#4. Reset Hosting: Phải hỏi khách backup dữ liệu đầu tiên. Suspend (nội dung: delete) => terminate => CREATE

#5. source worrdpress mà 404 thường là do thiếu file .htaccess. lên google kiếm htaccess mặc định của wp rồi chép vào public_html/.htaccess là ok

#6. Hủy SSL => Change status thành Cancel 

#7. Off VPS Premium -> PREMIUM thì qua bên vcenter off => đổi tên => release IP => chỉnh cancel

#8. Nếu nâng cấp disk thì phải ssh/remote vào VPS để extend

#9. Task mở lại thì chỉ cần nhấn unsuspend

#10. Cài lại OS cho khách, nhớ giữ nguyên IP cho khách

#11. Nhớ hỏi khách trước khi làm. Nâng cấp VPS CHEAP, Basic, GPU thì chuyển Product/Service sang yêu cầu -> nhấn Stop -> change Package -> Start lại và đợi. Sau đó check thông số của VPS có đúng yêu cầu chưa

#12. Task rebuild:  Phải hỏi khách trước khi làm. Đầu tiên em phải kiểm tra IP khách đưa ứng với VPS nào. Sau đó vào trang portal , kéo xuống dưới phần  Reinstall ==> chọn template như cũ rồi nhấn nút reinstall

#13. Task active Hosting + VPS Cheap, Basic, GPU: Create -> Send mail 

#14. Suspend dịch vụ: Qua bên vcenter, đổi tên + suspend-dd-mm-yy, sau đó qua portal chỉnh status thôi, kh nhấn nút suspend nữa

#15. Task kích hoạt VPS Premium: Sau khi kích hoạt -> nhớ chỉnh status

#16. Trỏ record TXT, phần Content phải đều trong dấu ""

#17. không # Ip đổi với VPS CHEAP BASIC GPU nha

#18. Nâng cấp dịch vụ hosting thì kh cần stop, chuyển service -> change package. Nhưng VPS phải cần xác nhận bảo trì r STOP sau đó thực hiện

#19. Task kiểm tra dữ liệu, vào đúng hosting của domain đó, xong check, nếu còn sẽ hiện, sau đó unsuspend nếu sale yêu cầu

# user root là dành cho Linux, Administrator là dành cho Win

#Active dịch vụ colo -> chỉnh status Active -> Save



# !!! Em đã chuyển PKD nhờ chị @AnhAnhT hỗ trợ khách giúp em với ạ 