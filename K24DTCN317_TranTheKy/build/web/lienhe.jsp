<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar, java.util.Locale" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="data.jsp" %>
<% pageContext.setAttribute("pageTitle", "Liên hệ"); pageContext.setAttribute("activePage", "lienhe"); %>
<%@ include file="header.jsp" %>


<section class="page-head">
    <div class="container">
        <h1>Liên hệ</h1>
        <p>Có câu hỏi hoặc muốn trao đổi? Hãy nhắn cho tôi một dòng.</p>
    </div>
</section>

<section class="section">
    <div class="container contact-grid">

        <div class="contact-info reveal">
            <h2 class="section-title left">Thông tin liên hệ</h2>

            <ul class="contact-list">
                <li>
                    <span class="ci-icon">&#9993;</span>
                    <span><small>Email</small><a href="mailto:<c:out value='${email}'/>"><c:out value="${email}"/></a></span>
                </li>
                <li>
                    <span class="ci-icon">&#128222;</span>
                    <span><small>Điện thoại</small><c:out value="${dienThoai}"/></span>
                </li>
                <li>
                    <span class="ci-icon">&#127979;</span>
                    <span><small>Trường</small><c:out value="${truong}"/></span>
                </li>
                <li>
                    <span class="ci-icon">&#128218;</span>
                    <span><small>Lớp - Mã SV</small><c:out value="${lop}"/> &middot; <c:out value="${maSV}"/></span>
                </li>
            </ul>
        </div>

        <form class="contact-form reveal" id="contactForm" novalidate>
            <h2 class="section-title left">Gửi lời nhắn</h2>

            <div class="field">
                <label for="cfName">Họ và tên</label>
                <input type="text" id="cfName" name="name" placeholder="Nguyễn Văn A">
                <span class="err" id="errName"></span>
            </div>

            <div class="field">
                <label for="cfEmail">Email</label>
                <input type="email" id="cfEmail" name="email" placeholder="ban@example.com">
                <span class="err" id="errEmail"></span>
            </div>

            <div class="field">
                <label for="cfMsg">Nội dung</label>
                <textarea id="cfMsg" name="message" rows="5" placeholder="Bạn muốn nói gì..."></textarea>
                <span class="err" id="errMsg"></span>
            </div>

            <button type="submit" class="btn btn-primary btn-block">Gửi lời nhắn</button>
            <p class="form-ok" id="formOk" hidden>&#10003; Cảm ơn bạn! Lời nhắn đã được ghi nhận.</p>
        </form>

    </div>
</section>

<%@ include file="footer.jsp" %>
