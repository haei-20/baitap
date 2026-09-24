<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar, java.util.Locale" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="data.jsp" %>
<% pageContext.setAttribute("pageTitle", "Định hướng nghề nghiệp"); pageContext.setAttribute("activePage", "dinhhuong"); %>
<%@ include file="header.jsp" %>


<section class="page-head">
    <div class="container">
        <h1>Định hướng nghề nghiệp</h1>
        <p><c:out value="${dinhHuong}"/></p>
    </div>
</section>

<section class="section">
    <div class="container narrow">
        <h2 class="section-title">Lộ trình của tôi</h2>
        <p class="section-sub">Từ chỗ đang đứng đến chỗ muốn tới</p>

        <div class="timeline">
            <c:forEach var="moc" items="${loTrinh}" varStatus="i">
                <div class="tl-item reveal">
                    <div class="tl-dot"><c:out value="${i.count}"/></div>
                    <div class="tl-content">
                        <span class="tl-time"><c:out value="${moc[0]}"/></span>
                        <h3><c:out value="${moc[1]}"/></h3>
                        <p><c:out value="${moc[2]}"/></p>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>

<section class="section section-alt">
    <div class="container narrow">
        <h2 class="section-title">Kỹ năng hiện có</h2>
        <p class="section-sub">Tự đánh giá theo mức độ tự tin khi làm dự án</p>

        <div class="skills">
            <c:forEach var="kn" items="${kyNang}">
                <div class="skill reveal">
                    <div class="skill-head">
                        <span><c:out value="${kn[0]}"/></span>
                        <span class="skill-pct"><c:out value="${kn[1]}"/>%</span>
                    </div>
                    <div class="skill-bar">
                        <div class="skill-fill" data-pct="<c:out value='${kn[1]}'/>"></div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>

<%@ include file="footer.jsp" %>
