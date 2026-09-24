<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar, java.util.Locale" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="data.jsp" %>
<% pageContext.setAttribute("pageTitle", "Sở thích"); pageContext.setAttribute("activePage", "sothich"); %>
<%@ include file="header.jsp" %>


<section class="page-head">
    <div class="container">
        <h1>Sở thích cá nhân</h1>
        <p><%= soThich.length %> điều khiến ngày của tôi dễ chịu hơn. Bấm vào từng thẻ để xem chi tiết.</p>
    </div>
</section>

<section class="section">
    <div class="container">

        <div class="filter-bar">
            <input type="text" id="hobbySearch" class="filter-input"
                   placeholder="&#128269;  Gõ để tìm sở thích..." autocomplete="off">
            <span class="filter-count" id="hobbyCount"></span>
        </div>

        <div class="hobby-grid" id="hobbyGrid">
            <c:forEach var="st" items="${soThich}" varStatus="i">
                <article class="hobby-card reveal" data-name="<c:out value='${st[0]}'/>">
                    <div class="hobby-top">
                        <span class="hobby-icon"><c:out value="${st[1]}" escapeXml="false"/></span>
                        <span class="hobby-index">0<c:out value="${i.count}"/></span>
                    </div>
                    <h3><c:out value="${st[0]}"/></h3>
                    <p class="hobby-desc"><c:out value="${st[2]}"/></p>
                    <button class="hobby-btn" type="button">Chi tiết &darr;</button>
                </article>
            </c:forEach>
        </div>

        <p class="empty-msg" id="hobbyEmpty" hidden>Không tìm thấy sở thích nào phù hợp.</p>

    </div>
</section>

<section class="section section-alt">
    <div class="container narrow">
        <h2 class="section-title">Một tuần điển hình của tôi</h2>
        <div class="week-grid">
            <div class="week-item reveal"><span>T2 - T6</span><p>Học trên lớp và tự học lập trình buổi tối</p></div>
            <div class="week-item reveal"><span>T7</span><p>Đá bóng cùng bạn bè, đọc sách buổi chiều</p></div>
            <div class="week-item reveal"><span>CN</span><p>Làm dự án cá nhân, nghe nhạc và nghỉ ngơi</p></div>
        </div>
    </div>
</section>

<%@ include file="footer.jsp" %>
