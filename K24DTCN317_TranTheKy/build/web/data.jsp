<%@ page pageEncoding="UTF-8" %>
<%@ page import="java.util.Calendar, java.util.Date, java.text.SimpleDateFormat" %>

<%

    String hoTen   = "Trần Thế Kỷ";
    String maSV    = "K25DTCN416";
    String lop     = "D25TXCN12-K";
    String truong  = "Học viện Công nghệ Bưu chính Viễn thông";
    String email   = "kytt.k25@stu.ptit.edu.vn";
    String dienThoai = "0912 345 678";
    String queQuan = "Hà Nội";

    Calendar calNS = Calendar.getInstance();
    calNS.clear();
    calNS.set(1994, Calendar.NOVEMBER, 12);          
    Date ngaySinh = calNS.getTime();
    String ngaySinhStr = new SimpleDateFormat("dd/MM/yyyy").format(ngaySinh);

    Calendar homNay = Calendar.getInstance();
    int tuoi = homNay.get(Calendar.YEAR) - calNS.get(Calendar.YEAR);
    if (homNay.get(Calendar.DAY_OF_YEAR) < calNS.get(Calendar.DAY_OF_YEAR)) {
        tuoi--;
    }

    String moTa = "Tôi là một sinh viên đam mê công nghệ thông tin, yêu thích lập trình web "
                + "và luôn muốn tìm hiểu những công nghệ mới.";

    String moTaThem = "Ngoài giờ học trên lớp, tôi dành thời gian tự học qua tài liệu tiếng Anh, "
                + "làm các dự án nhỏ để rèn tay nghề và tham gia cộng đồng lập trình viên. "
                + "Tôi tin rằng kiên trì mỗi ngày quan trọng hơn là học dồn trong một đêm.";

    String dinhHuong = "Mong muốn trở thành một kỹ sư phần mềm chuyên về phát triển web "
                + "và ứng dụng di động trong tương lai.";

    String[][] soThich = {
        {"Lập trình",     "&#128187;", "Viết code mỗi ngày, hiện đang học Java Web và JavaScript."},
        {"Đọc sách",      "&#128218;", "Thích sách kỹ năng và sách kỹ thuật, mỗi tháng một cuốn."},
        {"Nghe nhạc",      "&#127925;", "Nhạc không lời khi học bài, nhạc Việt khi thư giãn."},
        {"Du lịch",       "&#9992;",   "Đi để thấy những nơi mình chưa từng thấy, đã qua 12 tỉnh thành."},
        {"Chơi thể thao", "&#9917;",   "Đá bóng cuối tuần và chạy bộ 3 buổi mỗi tuần."}
    };

    String[][] kyNang = {
        {"HTML / CSS",        "85"},
        {"JavaScript",        "75"},
        {"Java (JSP/Servlet)","70"},
        {"SQL / MySQL",       "65"},
        {"Git / GitHub",      "60"}
    };

    String[][] loTrinh = {
        {"Hiện tại",     "Sinh viên ngành Công nghệ thông tin", "Nắm chắc nền tảng lập trình, cơ sở dữ liệu và lập trình web."},
        {"1 - 2 năm tới","Thực tập sinh / Lập trình viên Web",  "Tham gia dự án thật, thành thạo một framework back-end."},
        {"3 - 5 năm tới","Kỹ sư phần mềm Full-stack",           "Làm chủ cả web và ứng dụng di động, tự thiết kế được hệ thống."},
        {"Dài hạn",      "Trưởng nhóm kỹ thuật",                "Dẫn dắt một nhóm phát triển sản phẩm, đào tạo người đi sau."}
    };

    pageContext.setAttribute("hoTen",     hoTen);
    pageContext.setAttribute("maSV",      maSV);
    pageContext.setAttribute("lop",       lop);
    pageContext.setAttribute("truong",    truong);
    pageContext.setAttribute("email",     email);
    pageContext.setAttribute("dienThoai", dienThoai);
    pageContext.setAttribute("queQuan",   queQuan);
    pageContext.setAttribute("ngaySinh",  ngaySinhStr);
    pageContext.setAttribute("tuoi",      tuoi);
    pageContext.setAttribute("moTa",      moTa);
    pageContext.setAttribute("moTaThem",  moTaThem);
    pageContext.setAttribute("dinhHuong", dinhHuong);
    pageContext.setAttribute("soThich",   soThich);
    pageContext.setAttribute("kyNang",    kyNang);
    pageContext.setAttribute("loTrinh",   loTrinh);
%>
