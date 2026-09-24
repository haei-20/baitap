<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar, java.util.Locale" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="data.jsp" %>

<% pageContext.setAttribute("pageTitle", "Trang chủ"); pageContext.setAttribute("activePage", "index"); %>

<%@ include file="header.jsp" %>

<section class="hero">
    <div class="container hero-grid">

        <div class="hero-photo reveal">
            <div class="avatar-ring">
                 <img src="images/Ảnh chụp màn hình 2026-09-24 231336.png"
                     alt="Ảnh đại diện của <c:out value='${hoTen}'/>"
                     class="avatar">
            </div>
            <span class="badge-online">Đang học tập</span>
        </div>

        <div class="hero-text reveal">
            <p class="greeting" id="greeting">Xin chào!</p>
            <h1>Tôi là <c:out value="${hoTen}"/></h1>
            <p class="role"><c:out value="${dinhHuong}"/></p>

            <div class="hero-actions">
                <a href="sothich.jsp" class="btn btn-primary">Xem sở thích</a>
                <a href="lienhe.jsp"  class="btn btn-ghost">Liên hệ với tôi</a>
            </div>
        </div>

    </div>
</section>


<section class="section" id="thongtin">
    <div class="container">
        <h2 class="section-title">Thông tin cá nhân</h2>
        <p class="section-sub">Những thông tin cơ bản về bản thân tôi</p>

        <div class="info-grid">
            <div class="info-card reveal">
                <span class="info-icon">&#128100;</span>
                <span class="info-label">Họ và tên</span>
                <span class="info-value"><c:out value="${hoTen}"/></span>
            </div>
            <div class="info-card reveal">
                <span class="info-icon">&#127874;</span>
                <span class="info-label">Ngày sinh</span>
                <span class="info-value"><c:out value="${ngaySinh}"/> (<c:out value="${tuoi}"/> tuổi)</span>
            </div>
            <div class="info-card reveal">
                <span class="info-icon">&#127891;</span>
                <span class="info-label">Mã sinh viên</span>
                <span class="info-value"><c:out value="${maSV}"/></span>
            </div>
            <div class="info-card reveal">
                <span class="info-icon">&#128218;</span>
                <span class="info-label">Lớp</span>
                <span class="info-value"><c:out value="${lop}"/></span>
            </div>
            <div class="info-card reveal info-card-wide">
                <span class="info-icon">&#127979;</span>
                <span class="info-label">Trường</span>
                <span class="info-value"><c:out value="${truong}"/></span>
            </div>
            <div class="info-card reveal">
                <span class="info-icon">&#127968;</span>
                <span class="info-label">Quê quán</span>
                <span class="info-value"><c:out value="${queQuan}"/></span>
            </div>
        </div>
    </div>
</section>


<section class="section section-alt" id="gioithieu">
    <div class="container narrow">
        <h2 class="section-title">Đôi lời về tôi</h2>

        <div class="about-box reveal">
            <p class="about-main"><c:out value="${moTa}"/></p>

            <div class="about-more" id="aboutMore">
                <p><c:out value="${moTaThem}"/></p>
                <ul class="about-list">
                    <li><strong>Điểm mạnh:</strong> kiên trì, chịu khó tự học, làm việc nhóm tốt.</li>
                    <li><strong>Đang học:</strong> Java Web (JSP &amp; Servlet), JavaScript hiện đại.</li>
                    <li><strong>Mục tiêu năm nay:</strong> hoàn thành 3 dự án web cá nhân.</li>
                </ul>
            </div>

            <button class="btn btn-primary" id="btnMore"
                    data-open="Thu gọn lại" data-close="Nhấn để biết thêm">
                Nhấn để biết thêm
            </button>
        </div>

        <div class="accordion reveal">
            <button class="accordion-head" id="hobbyToggle" aria-expanded="false">
                <span>&#10024; Sở thích của tôi (<%= soThich.length %> sở thích)</span>
                <span class="accordion-arrow">&#9660;</span>
            </button>
            <div class="accordion-body" id="hobbyList">
                <ul class="hobby-quick">
                    <c:forEach var="st" items="${soThich}" varStatus="i">
                        <li>
                            <span class="hobby-no"><c:out value="${i.count}"/></span>
                            <c:out value="${st[1]}" escapeXml="false"/> <c:out value="${st[0]}"/>
                        </li>
                    </c:forEach>
                </ul>
                <a href="sothich.jsp" class="link-more">Xem chi tiết từng sở thích &rarr;</a>
            </div>
        </div>
    </div>
</section>


<%@ include file="footer.jsp" %>
